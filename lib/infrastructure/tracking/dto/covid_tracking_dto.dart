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

  String activeCasesText;
  String countryText;
  String lastUpdate;
  String newCasesText;
  String newDeathsText;
  String totalCasesText;
  String totalDeathsText;
  String totalRecoveredText;

  CovidTrackingDto fromJson(Map<String, dynamic> json) => _$CovidTrackingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CovidTrackingDtoToJson(this);
}
