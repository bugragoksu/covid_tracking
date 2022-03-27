part of 'covid_tracking_bloc.dart';

abstract class CovidTrackingState extends Equatable {
  const CovidTrackingState();

  @override
  List<Object> get props => [];
}

class CovidTrackingInitial extends CovidTrackingState {}

class CovidTrackingLoading extends CovidTrackingState {}

class CovidTrackingError extends CovidTrackingState {
  final String message;

  const CovidTrackingError(this.message);

  @override
  List<Object> get props => [message];
}

class CovidTrackingCountriesFetched extends CovidTrackingState {
  final List<CovidTracking> covidTrackingList;

  const CovidTrackingCountriesFetched(this.covidTrackingList);

  @override
  List<Object> get props => [covidTrackingList];
}

class CovidTrackingCountryFetched extends CovidTrackingState {
  final CovidTracking covidTracking;

  const CovidTrackingCountryFetched(this.covidTracking);

  @override
  List<Object> get props => [covidTracking];
}
