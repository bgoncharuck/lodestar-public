import 'package:flutter/services.dart';

Future<void> startupRoutines() async {
  await setScreenOrientation();
}

Future<void> setScreenOrientation() => SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
