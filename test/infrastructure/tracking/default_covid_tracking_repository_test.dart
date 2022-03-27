import 'package:covid_tracking/domain/tracking/covid_tracking_repository.dart';
import 'package:covid_tracking/infrastructure/tracking/data-source/remote_covid_tracking_data_source.dart';
import 'package:covid_tracking/infrastructure/tracking/default_covid_tracking_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/any.dart';
import '../../helpers/mocks.dart';

void main() {
  group('DefaultGibDeptRepository', () {
    late RemoteCovidTrackingDataSource _mockCovidTrackingDataSource;
    late CovidTrackingRepository _covidTrackingRepository;

    setUp(() {
      _mockCovidTrackingDataSource = MockCovidTrackingDataSource();
      _covidTrackingRepository = DefaultCovidTrackingRepository(_mockCovidTrackingDataSource);
    });

    group('getCountries', () {
      test('should return List of CovidTrackingDTO from data source', () async {
        final covidTrackingDtoList = Any.covidTrackingDtoList();
        when(_mockCovidTrackingDataSource).calls(#getCountries).thenAnswer((p0) async => covidTrackingDtoList);

        final result = await _covidTrackingRepository.getCountries();

        verify(_mockCovidTrackingDataSource).called(#getCountries).once();

        expect(covidTrackingDtoList.length, result.data!.length);
      });
    });
  });
}
