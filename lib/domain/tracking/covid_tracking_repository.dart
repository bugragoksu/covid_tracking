import 'package:covid_tracking/domain/data_result.dart';
import 'package:covid_tracking/domain/tracking/entities/covid_tracking.dart';

abstract class CovidTrackingRepository {
  Future<DataResult<List<CovidTracking>>> getCountries();
  Future<DataResult<CovidTracking>> getCountryDetail({required String countryCode});
}
