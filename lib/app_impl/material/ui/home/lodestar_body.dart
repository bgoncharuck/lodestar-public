import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lodestar/app_impl/material/logic/home/home_bloc.dart';
import 'package:lodestar/app_impl/material/logic/home/home_state.dart';

class LodestarBody extends StatelessWidget {
  const LodestarBody({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previousState, state) {
          if (previousState.index != state.index) {
            return true;
          }
          return false;
        },
        builder: (context, state) {
          switch (state.index) {
            case 2:
              return const Text('index 2');
            case 1:
              return const Text('index 1');
            case 0:
            default:
              return const Text('index 0');
          }
        },
      );
}
