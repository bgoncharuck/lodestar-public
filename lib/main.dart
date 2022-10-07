import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'package:lodestar/app/startup_routines.dart';
import 'package:lodestar/app/app.dart';
import 'package:lodestar/app_impl/material/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await startupRoutines();
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  HydratedBlocOverrides.runZoned(
    () => runApp(const Application(implementation: MaterialApplication())),
    storage: storage,
  );
}
