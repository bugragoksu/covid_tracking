import 'package:covid_tracking/domain/tracking/entities/covid_tracking.dart';
import 'package:covid_tracking/infrastructure/tracking/dto/covid_tracking_dto.dart';
import 'package:random_string/random_string.dart';

class Any {
  static String alphaNumericString(int length) => randomAlphaNumeric(length);
  static CovidTrackingDto covidTrackingDto({
    String? activeCasesText,
    String? countryText,
    String? lastUpdate,
    String? newCasesText,
    String? newDeathsText,
    String? totalCasesText,
    String? totalDeathsText,
    String? totalRecoveredText,
  }) =>
      CovidTrackingDto(
        activeCasesText: activeCasesText ?? Any.alphaNumericString(5),
        countryText: countryText ?? Any.alphaNumericString(5),
        lastUpdate: lastUpdate ?? Any.alphaNumericString(5),
        newCasesText: newCasesText ?? Any.alphaNumericString(5),
        newDeathsText: newDeathsText ?? Any.alphaNumericString(5),
        totalCasesText: totalCasesText ?? Any.alphaNumericString(5),
        totalDeathsText: totalDeathsText ?? Any.alphaNumericString(5),
        totalRecoveredText: totalRecoveredText ?? Any.alphaNumericString(5),
      );
  static CovidTracking covidTracking({
    String? countryText,
    String? lastUpdate,
    String? totalCasesText,
    String? totalDeathsText,
    String? totalRecoveredText,
  }) =>
      CovidTracking(
        countryText ?? Any.alphaNumericString(10),
        lastUpdate ?? Any.alphaNumericString(10),
        totalCasesText ?? Any.alphaNumericString(10),
        totalDeathsText ?? Any.alphaNumericString(10),
        totalRecoveredText ?? Any.alphaNumericString(10),
      );

  static List<CovidTrackingDto> covidTrackingDtoList() => List.generate(5, (index) => Any.covidTrackingDto());
}
