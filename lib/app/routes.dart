import 'package:flutter/widgets.dart';
import 'package:lodestar/app/route/bioweek.dart';
import 'package:lodestar/app/route/home.dart';
import 'package:lodestar/app/route/compatibility.dart';
import 'package:lodestar/app/route/match.dart';
import 'package:proste_route_animation/proste_route_animation.dart';

class AppPath {
  static const String homeScreen = '/home';
  static const String compatibilityScreen = '/compatibility';
  static const String matchScreen = '/match';
  static const String bioweekScreen = '/bioweek';

  const AppPath({
    required this.homeImplementation,
    required this.compatibilityImplementation,
    required this.matchImplementation,
    required this.bioweekImplementation,
  });
  final Widget homeImplementation;
  final Widget compatibilityImplementation;
  final Widget matchImplementation;
  final Widget bioweekImplementation;

  Route<dynamic> generateRoute(RouteSettings conf) {
    Widget path;
    switch (conf.name) {
      case AppPath.homeScreen:
      case '/':
        path = HomeRoute(
          implementation: homeImplementation,
        );
        break;
      case AppPath.compatibilityScreen:
        path = CompatibilityRoute(
          implementation: compatibilityImplementation,
        );
        break;
      case AppPath.matchScreen:
        path = MatchRoute(
          implementation: matchImplementation,
        );
        break;
      case AppPath.bioweekScreen:
        path = BioweekRoute(
          implementation: bioweekImplementation,
        );
        break;
      default:
        throw const RouteException("Route not found");
    }
    return ProsteRouteAnimation.fadeRoute(
      route: path,
      duration: const Duration(milliseconds: 100),
      reverseDuration: const Duration(milliseconds: 100),
    );
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
