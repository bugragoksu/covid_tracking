part of 'covid_tracking_bloc.dart';

abstract class CovidTrackingEvent extends Equatable {
  const CovidTrackingEvent();

  @override
  List<Object> get props => [];
}

class CovidTrackingCountriesFetch extends CovidTrackingEvent {
  const CovidTrackingCountriesFetch();
}

class CovidTrackingCountryFetch extends CovidTrackingEvent {
  const CovidTrackingCountryFetch(this.countryCode);
  final String countryCode;
  @override
  List<Object> get props => [countryCode];
}
