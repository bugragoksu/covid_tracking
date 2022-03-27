// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_tracking_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CovidTrackingDto _$CovidTrackingDtoFromJson(Map<String, dynamic> json) =>
    CovidTrackingDto(
      activeCasesText: json['Active Cases_text'] as String?,
      countryText: json['Country_text'] as String?,
      lastUpdate: json['Last Update'] as String?,
      newCasesText: json['New Cases_text'] as String?,
      newDeathsText: json['New Deaths_text'] as String?,
      totalCasesText: json['Total Cases_text'] as String?,
      totalDeathsText: json['Total Deaths_text'] as String?,
      totalRecoveredText: json['Total Recovered_text'] as String?,
    );

Map<String, dynamic> _$CovidTrackingDtoToJson(CovidTrackingDto instance) =>
    <String, dynamic>{
      'Active Cases_text': instance.activeCasesText,
      'Country_text': instance.countryText,
      'Last Update': instance.lastUpdate,
      'New Cases_text': instance.newCasesText,
      'New Deaths_text': instance.newDeathsText,
      'Total Cases_text': instance.totalCasesText,
      'Total Deaths_text': instance.totalDeathsText,
      'Total Recovered_text': instance.totalRecoveredText,
    };
