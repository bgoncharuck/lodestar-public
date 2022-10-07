import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lodestar/app_impl/material/config/adaptive_formula.dart';
import 'package:lodestar/app_impl/material/logic/home/home_bloc.dart';
import 'package:lodestar/app_impl/material/ui/home/lodestar_body.dart';
import 'package:lodestar/app_impl/material/ui/home/lodestar_footer.dart';
import 'package:lodestar/app_impl/material/ui/home/lodestar_header.dart';

class MaterialHomeRoute extends StatelessWidget {
  const MaterialHomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    if (adaptiveScreenIsNotInitialized) {
      setScreenHeight(MediaQuery.of(context).size.height);
      setScreenWidth(MediaQuery.of(context).size.width);
      adaptiveScreenIsNotInitialized = false;
    }
    return BlocProvider(
      create: (BuildContext context) => HomeBloc(),
      child: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: const [
              Align(alignment: Alignment.topCenter, child: LodestarHeader()),
              Align(alignment: Alignment.center, child: LodestarBody()),
              Align(alignment: Alignment.bottomCenter, child: LodestarFooter()),
            ],
          ),
        ),
      );
}
