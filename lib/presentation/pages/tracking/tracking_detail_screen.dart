import 'package:covid_tracking/injection.dart';
import 'package:covid_tracking/presentation/pages/tracking/bloc/covid_tracking_bloc.dart';
import 'package:covid_tracking/presentation/pages/tracking/widgets/info_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrackingDetailScreen extends StatefulWidget {
  const TrackingDetailScreen({Key? key, required this.countryCode}) : super(key: key);
  final String countryCode;

  @override
  State<TrackingDetailScreen> createState() => _TrackingDetailScreenState();
}

class _TrackingDetailScreenState extends State<TrackingDetailScreen> {
  late CovidTrackingBloc _covidTrackingBloc;

  @override
  void initState() {
    _covidTrackingBloc = getIt.get<CovidTrackingBloc>()..add(CovidTrackingCountryFetch(widget.countryCode));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.countryCode)),
      body: Center(
        child: BlocBuilder<CovidTrackingBloc, CovidTrackingState>(
          bloc: _covidTrackingBloc,
          builder: (context, state) {
            if (state is CovidTrackingLoading) return const CircularProgressIndicator();
            if (state is CovidTrackingError) return Text(state.message);
            if (state is CovidTrackingCountryFetched) {
              return InfoTable(
                covidTracking: state.covidTracking,
              );
            }
            return const Text('Something went wrong');
          },
        ),
      ),
    );
  }
}
