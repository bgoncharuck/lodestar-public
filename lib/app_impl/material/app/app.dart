import 'package:flutter/material.dart';
import 'package:lodestar/app/routes.dart';
import 'package:lodestar/app_impl/material/app/routes.dart';
import 'package:lodestar/app_impl/material/config/theme.dart';
import 'package:lodestar/resources/text.dart' as text;

class MaterialApplication extends StatelessWidget {
  const MaterialApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: text.title,
      initialRoute: AppPath.homeScreen,
      onGenerateRoute: materialAppPath.generateRoute,
      theme: ThemeData(
        fontFamily: 'Lato',
        extensions: const <ThemeExtension<dynamic>>[
          AppTheme.light,
        ],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
                side: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
