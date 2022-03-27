import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/any.dart';

void main() {
  group('CovidTrackingDto', () {
    group('toCovidTracking', () {
      test('should convert to domain CovidTracking', () {
        final covidTracking = Any.covidTracking();

        final covidTrackingDto = Any.covidTrackingDto(
          countryText: covidTracking.countryText,
          lastUpdate: covidTracking.lastUpdate,
          totalCasesText: covidTracking.totalCasesText,
          totalDeathsText: covidTracking.totalDeathsText,
          totalRecoveredText: covidTracking.totalRecoveredText,
        );

        final expectedCovidTracking = covidTrackingDto.toCovidTracking();

        expect(expectedCovidTracking, covidTracking);
      });
    });
  });
}
