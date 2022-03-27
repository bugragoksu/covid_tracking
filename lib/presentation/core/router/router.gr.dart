// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../pages/tracking/tracking_detail_screen.dart' as _i2;
import '../../pages/tracking/tracking_home_screen.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    TrackingHomeScreenRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TrackingHomeScreen());
    },
    TrackingDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<TrackingDetailScreenRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.TrackingDetailScreen(
              key: args.key, countryCode: args.countryCode));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(TrackingHomeScreenRoute.name, path: '/'),
        _i3.RouteConfig(TrackingDetailScreenRoute.name,
            path: '/tracking-detail-screen')
      ];
}

/// generated route for
/// [_i1.TrackingHomeScreen]
class TrackingHomeScreenRoute extends _i3.PageRouteInfo<void> {
  const TrackingHomeScreenRoute()
      : super(TrackingHomeScreenRoute.name, path: '/');

  static const String name = 'TrackingHomeScreenRoute';
}

/// generated route for
/// [_i2.TrackingDetailScreen]
class TrackingDetailScreenRoute
    extends _i3.PageRouteInfo<TrackingDetailScreenRouteArgs> {
  TrackingDetailScreenRoute({_i4.Key? key, required String countryCode})
      : super(TrackingDetailScreenRoute.name,
            path: '/tracking-detail-screen',
            args: TrackingDetailScreenRouteArgs(
                key: key, countryCode: countryCode));

  static const String name = 'TrackingDetailScreenRoute';
}

class TrackingDetailScreenRouteArgs {
  const TrackingDetailScreenRouteArgs({this.key, required this.countryCode});

  final _i4.Key? key;

  final String countryCode;

  @override
  String toString() {
    return 'TrackingDetailScreenRouteArgs{key: $key, countryCode: $countryCode}';
  }
}
