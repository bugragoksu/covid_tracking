import 'package:covid_tracking/domain/failure/generic_failure.dart';
import 'package:covid_tracking/domain/failure/response_failure.dart';
import 'package:covid_tracking/infrastructure/core/exceptions/response_exception.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({
    required this.message,
  });

  factory Failure.fromException(Exception e) {
    switch (e.runtimeType) {
      case ResponseException:
        return ResponseFailure(
          errorStatus: (e as ResponseException).statusCode ?? 0,
          message: (e as ResponseException).message,
        );
      default:
        return const GenericFailure();
    }
  }

  final String message;

  @override
  String toString() => '$message Failure';

  @override
  List<Object?> get props => [message];
}
