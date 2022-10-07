import 'package:flutter/services.dart';
import 'package:jovial_svg/jovial_svg.dart';
import 'package:lodestar/resources/svgs.dart';

Future<void> startupRoutines() async {
  await loadSVGs();
  await setScreenOrientation();
}

Future<void> loadSVGs() async {
  shipSVG = await ScalableImage.fromSIAsset(rootBundle, "assets/ship.si");
}

Future<void> setScreenOrientation() => SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
