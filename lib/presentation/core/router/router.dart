import 'package:auto_route/auto_route.dart';
import 'package:covid_tracking/presentation/pages/tracking/tracking_detail_screen.dart';
import 'package:covid_tracking/presentation/pages/tracking/tracking_home_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: TrackingHomeScreen, initial: true),
    AutoRoute(page: TrackingDetailScreen),
  ],
)
class $AppRouter {}
