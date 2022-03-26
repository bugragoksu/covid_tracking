// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_tracking_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CovidTrackingDto _$CovidTrackingDtoFromJson(Map<String, dynamic> json) =>
    CovidTrackingDto(
      activeCasesText: json['activeCasesText'] as String,
      countryText: json['countryText'] as String,
      lastUpdate: json['lastUpdate'] as String,
      newCasesText: json['newCasesText'] as String,
      newDeathsText: json['newDeathsText'] as String,
      totalCasesText: json['totalCasesText'] as String,
      totalDeathsText: json['totalDeathsText'] as String,
      totalRecoveredText: json['totalRecoveredText'] as String,
    );

Map<String, dynamic> _$CovidTrackingDtoToJson(CovidTrackingDto instance) =>
    <String, dynamic>{
      'activeCasesText': instance.activeCasesText,
      'countryText': instance.countryText,
      'lastUpdate': instance.lastUpdate,
      'newCasesText': instance.newCasesText,
      'newDeathsText': instance.newDeathsText,
      'totalCasesText': instance.totalCasesText,
      'totalDeathsText': instance.totalDeathsText,
      'totalRecoveredText': instance.totalRecoveredText,
    };
