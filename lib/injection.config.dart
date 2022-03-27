// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'infrastructure/core/network/network_manager.dart' as _i4;
import 'infrastructure/tracking/data-source/remote_covid_tracking_data_source.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioModule = _$DioModule();
  gh.factory<_i3.Dio>(() => dioModule.dio);
  gh.factory<_i4.NetworkManager>(() => _i4.NetworkManager(get<_i3.Dio>()));
  gh.factory<_i5.RemoteCovidTrackingDataSource>(() =>
      _i5.DefaultRemoteCovidTrackingDataSource(get<_i4.NetworkManager>()));
  return get;
}

class _$DioModule extends _i4.DioModule {}
