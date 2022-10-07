import 'package:lodestar/app/routes.dart';
import 'package:lodestar/app_impl/material/ui/bioweek/bioweek.dart';
import 'package:lodestar/app_impl/material/ui/home/home.dart';
import 'package:lodestar/app_impl/material/ui/compatibility/compatibility.dart';
import 'package:lodestar/app_impl/material/ui/match/match.dart';

const AppPath materialAppPath = AppPath(
  homeImplementation: MaterialHomeRoute(),
  compatibilityImplementation: MaterialCompatibilityRoute(),
  matchImplementation: MaterialMatchRoute(),
  bioweekImplementation: MaterialBioweekRoute(),
);
