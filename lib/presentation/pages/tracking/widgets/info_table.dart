import 'package:covid_tracking/domain/tracking/entities/covid_tracking.dart';
import 'package:covid_tracking/presentation/pages/tracking/widgets/info_row.dart';
import 'package:flutter/material.dart';

class InfoTable extends StatelessWidget {
  const InfoTable({Key? key, required this.covidTracking}) : super(key: key);
  final CovidTracking covidTracking;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InfoRow(
          info: covidTracking.countryText,
          title: 'Country : ',
        ),
        const SizedBox(
          height: 10,
        ),
        InfoRow(
          info: covidTracking.totalCasesText,
          title: 'Total Cases : ',
        ),
        const SizedBox(
          height: 10,
        ),
        InfoRow(
          info: covidTracking.totalDeathsText,
          title: 'Total Deaths : ',
        ),
        const SizedBox(
          height: 10,
        ),
        InfoRow(
          info: covidTracking.totalRecoveredText,
          title: 'Total Recovered : ',
        ),
        const SizedBox(
          height: 10,
        ),
        InfoRow(
          info: covidTracking.lastUpdate,
          title: 'Last Update : ',
        ),
      ],
    );
  }
}
