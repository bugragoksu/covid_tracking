import 'package:covid_tracking/injection.dart';
import 'package:covid_tracking/presentation/pages/tracking/bloc/covid_tracking_bloc.dart';
import 'package:covid_tracking/presentation/pages/tracking/widgets/country_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrackingHomeScreen extends StatefulWidget {
  const TrackingHomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TrackingHomeScreen> createState() => _TrackingHomeScreenState();
}

class _TrackingHomeScreenState extends State<TrackingHomeScreen> {
  late CovidTrackingBloc _covidTrackingBloc;

  @override
  void initState() {
    _covidTrackingBloc = getIt.get<CovidTrackingBloc>()..add(const CovidTrackingCountriesFetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: BlocBuilder<CovidTrackingBloc, CovidTrackingState>(
            bloc: _covidTrackingBloc,
            builder: (context, state) {
              if (state is CovidTrackingLoading) return const CircularProgressIndicator();
              if (state is CovidTrackingError) return Text(state.message);
              if (state is CovidTrackingCountriesFetched) {
                return CountryList(
                  covidTrackingList: state.covidTrackingList,
                );
              }
              return const Text('Something went wrong');
            },
          ),
        ),
      ),
    );
  }
}
