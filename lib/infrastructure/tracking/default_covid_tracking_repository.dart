import 'package:covid_tracking/domain/data_result.dart';
import 'package:covid_tracking/domain/failure/failure.dart';
import 'package:covid_tracking/domain/tracking/covid_tracking_repository.dart';
import 'package:covid_tracking/domain/tracking/entities/covid_tracking.dart';
import 'package:covid_tracking/infrastructure/tracking/data-source/remote_covid_tracking_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CovidTrackingRepository)
class DefaultCovidTrackingRepository implements CovidTrackingRepository {
  DefaultCovidTrackingRepository(this._remoteCovidTrackingDataSource);

  final RemoteCovidTrackingDataSource _remoteCovidTrackingDataSource;

  @override
  Future<DataResult<List<CovidTracking>>> getCountries() async {
    try {
      final result = await _remoteCovidTrackingDataSource.getCountries();
      final gibDepts = result.map((e) => e.toCovidTracking()).toList();
      return DataResult.success(gibDepts);
    } on Exception catch (e, _) {
      return DataResult.failure(Failure.fromException(e));
    }
  }

  @override
  Future<DataResult<CovidTracking>> getCountryDetail({required String countryCode}) async {
    try {
      final result = await _remoteCovidTrackingDataSource.getCountryDetail(countryCode: countryCode);
      return DataResult.success(result.toCovidTracking());
    } on Exception catch (e) {
      return DataResult.failure(Failure.fromException(e));
    }
  }
}
