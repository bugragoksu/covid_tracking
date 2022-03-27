import 'package:covid_tracking/domain/failure/failure.dart';
import 'package:equatable/equatable.dart';

abstract class DataResult<S> extends Equatable {
  static DataResult<S> failure<S>(Failure failure) => _FailureResult(failure);
  static DataResult<S> success<S>(S data) => _SuccessResult(data);

  Failure? get error => fold<Failure?>((error) => error, (data) => null);

  S? get data => fold<S?>((error) => null, (data) => data);

  bool get isSuccess => this is _SuccessResult<S>;

  bool get isFailure => this is _FailureResult<S>;

  S dataOrElse(S other) => isSuccess && data != null ? data! : other;

  S operator |(S other) => dataOrElse(other);

  DataResult<T> either<T>(Failure Function(Failure error) fnFailure, T Function(S data) fnData);

  DataResult<T> then<T>(DataResult<T> Function(S data) fnData);

  DataResult<T> map<T>(T Function(S data) fnData);

  T fold<T>(T Function(Failure error) fnFailure, T Function(S data) fnData);

  @override
  List<Object?> get props => [if (isSuccess) data else error];
}

class _SuccessResult<S> extends DataResult<S> {
  _SuccessResult(this._value);

  final S _value;

  @override
  _SuccessResult<T> either<T>(Failure Function(Failure error) fnFailure, T Function(S data) fnData) {
    return _SuccessResult<T>(fnData(_value));
  }

  @override
  DataResult<T> then<T>(DataResult<T> Function(S data) fnData) {
    return fnData(_value);
  }

  @override
  _SuccessResult<T> map<T>(T Function(S data) fnData) {
    return _SuccessResult<T>(fnData(_value));
  }

  @override
  T fold<T>(T Function(Failure error) fnFailure, T Function(S data) fnData) {
    return fnData(_value);
  }
}

class _FailureResult<S> extends DataResult<S> {
  _FailureResult(this._value);

  final Failure _value;

  @override
  _FailureResult<T> either<T>(Failure Function(Failure error) fnFailure, T Function(S data) fnData) {
    return _FailureResult<T>(fnFailure(_value));
  }

  @override
  _FailureResult<T> map<T>(T Function(S data) fnData) {
    return _FailureResult<T>(_value);
  }

  @override
  _FailureResult<T> then<T>(DataResult<T> Function(S data) fnData) {
    return _FailureResult<T>(_value);
  }

  @override
  T fold<T>(T Function(Failure error) fnFailure, T Function(S data) fnData) {
    return fnFailure(_value);
  }
}
