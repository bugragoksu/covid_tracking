import 'package:covid_tracking/domain/tracking/entities/covid_tracking.dart';
import 'package:json_annotation/json_annotation.dart';

part 'covid_tracking_dto.g.dart';

@JsonSerializable()
class CovidTrackingDto {
  CovidTrackingDto({
    required this.activeCasesText,
    required this.countryText,
    required this.lastUpdate,
    required this.newCasesText,
    required this.newDeathsText,
    required this.totalCasesText,
    required this.totalDeathsText,
    required this.totalRecoveredText,
  });
  @JsonKey(name: "Active Cases_text")
  String? activeCasesText;

  @JsonKey(name: "Country_text")
  String? countryText;

  @JsonKey(name: "Last Update")
  String? lastUpdate;

  @JsonKey(name: "New Cases_text")
  String? newCasesText;

  @JsonKey(name: "New Deaths_text")
  String? newDeathsText;

  @JsonKey(name: "Total Cases_text")
  String? totalCasesText;

  @JsonKey(name: "Total Deaths_text")
  String? totalDeathsText;

  @JsonKey(name: "Total Recovered_text")
  String? totalRecoveredText;

  CovidTracking toCovidTracking() => CovidTracking(
        countryText ?? '',
        lastUpdate ?? '',
        totalCasesText ?? '',
        totalDeathsText ?? '',
        totalRecoveredText ?? '',
      );

  CovidTrackingDto fromJson(Map<String, dynamic> json) => _$CovidTrackingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CovidTrackingDtoToJson(this);

  static const fromJsonFactory = _$CovidTrackingDtoFromJson;
}
