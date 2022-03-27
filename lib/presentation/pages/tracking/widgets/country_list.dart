import 'package:covid_tracking/domain/tracking/entities/covid_tracking.dart';
import 'package:covid_tracking/presentation/pages/tracking/tracking_detail_screen.dart';
import 'package:covid_tracking/presentation/pages/tracking/widgets/text_card.dart';
import 'package:flutter/material.dart';

class CountryList extends StatelessWidget {
  const CountryList({
    Key? key,
    required this.covidTrackingList,
  }) : super(key: key);

  final List<CovidTracking> covidTrackingList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: ((context, index) => const Divider()),
        itemBuilder: ((context, index) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TrackingDetailScreen(countryCode: covidTrackingList[index].countryText),
                      ),
                    );
                  },
                  child: TextCard(text: covidTrackingList[index].countryText)),
            )),
        itemCount: covidTrackingList.length);
  }
}
