import 'package:bloc/bloc.dart';
import 'package:covid_tracking/domain/tracking/covid_tracking_repository.dart';
import 'package:covid_tracking/domain/tracking/entities/covid_tracking.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'covid_tracking_event.dart';
part 'covid_tracking_state.dart';

@injectable
class CovidTrackingBloc extends Bloc<CovidTrackingEvent, CovidTrackingState> {
  CovidTrackingBloc(this._covidTrackingRepository) : super(CovidTrackingInitial()) {
    on<CovidTrackingCountriesFetch>(_onCovidTrackingCountriesFetch);
    on<CovidTrackingCountryFetch>(_onCovidTrackingCountryFetch);
  }

  final CovidTrackingRepository _covidTrackingRepository;

  Future<void> _onCovidTrackingCountriesFetch(CovidTrackingCountriesFetch event, Emitter emit) async {
    emit(CovidTrackingLoading());
    final result = await _covidTrackingRepository.getCountries();

    result.fold(
      (error) => emit(CovidTrackingError(error.message)),
      (data) => emit(
        CovidTrackingCountriesFetched(data),
      ),
    );
  }

  Future<void> _onCovidTrackingCountryFetch(CovidTrackingCountryFetch event, Emitter emit) async {
    emit(CovidTrackingLoading());
    final result = await _covidTrackingRepository.getCountryDetail(countryCode: event.countryCode);

    result.fold(
      (error) => emit(CovidTrackingError(error.message)),
      (data) => emit(
        CovidTrackingCountryFetched(data),
      ),
    );
  }
}
