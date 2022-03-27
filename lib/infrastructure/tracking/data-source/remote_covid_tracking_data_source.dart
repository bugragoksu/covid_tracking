import 'package:covid_tracking/infrastructure/core/network/network_manager.dart';
import 'package:covid_tracking/infrastructure/tracking/dto/covid_tracking_dto.dart';
import 'package:injectable/injectable.dart';

abstract class RemoteCovidTrackingDataSource {
  Future<List<CovidTrackingDto>> getCountries();
  Future<CovidTrackingDto> getCountryDetail({required String countryCode});
}

@Injectable(as: RemoteCovidTrackingDataSource)
class DefaultRemoteCovidTrackingDataSource implements RemoteCovidTrackingDataSource {
  DefaultRemoteCovidTrackingDataSource(this._networkManager);

  final NetworkManager _networkManager;

  @override
  Future<List<CovidTrackingDto>> getCountries() {
    // TODO: implement getCountries
    throw UnimplementedError();
  }

  @override
  Future<CovidTrackingDto> getCountryDetail({required String countryCode}) {
    // TODO: implement getCountryDetail
    throw UnimplementedError();
  }
}
