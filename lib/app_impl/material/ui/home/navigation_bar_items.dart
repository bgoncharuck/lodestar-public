import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lodestar/app_impl/material/config/constants.dart';
import 'package:lodestar/app_impl/material/config/theme.dart';
import 'package:lodestar/app_impl/material/logic/home/home_bloc.dart';
import 'package:lodestar/app_impl/material/logic/home/home_event.dart';
import 'package:lodestar/app_impl/material/logic/home/home_state.dart';

class NavigationBarItems extends StatelessWidget {
  const NavigationBarItems({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previousState, state) {
          if (previousState.index != state.index) {
            return true;
          }
          return false;
        },
        builder: (context, state) => Row(
          children: [
            if (state.index == 0) ...const [
              Expanded(
                flex: 3,
                child: _FabActive(child: _Index0ActiveInner()),
              ),
              Expanded(
                flex: 3,
                child: _FabInactiveIndex1(),
              ),
              Expanded(
                flex: 3,
                child: _FabInactiveIndex2(),
              ),
            ],
            if (state.index == 1) ...const [
              Expanded(
                flex: 3,
                child: _FabInactiveIndex0(),
              ),
              Expanded(
                flex: 3,
                child: _FabActive(child: _Index1ActiveInner()),
              ),
              Expanded(
                flex: 3,
                child: _FabInactiveIndex2(),
              ),
            ],
            if (state.index == 2) ...const [
              Expanded(
                flex: 3,
                child: _FabInactiveIndex0(),
              ),
              Expanded(
                flex: 3,
                child: _FabInactiveIndex1(),
              ),
              Expanded(
                flex: 3,
                child: _FabActive(child: _Index2ActiveInner()),
              ),
            ],
          ],
        ),
      );
}

void _index0Tap(BuildContext context) => BlocProvider.of<HomeBloc>(context).add(NavigationEvent(index: 0));

void _index1Tap(BuildContext context) => BlocProvider.of<HomeBloc>(context).add(NavigationEvent(index: 1));

void _index2Tap(BuildContext context) => BlocProvider.of<HomeBloc>(context).add(NavigationEvent(index: 2));

class _FabActive extends StatelessWidget {
  const _FabActive({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return FloatingActionButton(
      onPressed: null,
      backgroundColor: theme.panelsTextColor,
      child: child,
    );
  }
}

class _FabInactiveIndex0 extends StatelessWidget {
  const _FabInactiveIndex0();

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        heroTag: 'navigate_compatibility',
        onPressed: () => _index0Tap(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        focusElevation: 0.0,
        hoverElevation: 0.0,
        highlightElevation: 0.0,
        child: const _Index0InactiveInner(),
      );
}

class _FabInactiveIndex1 extends StatelessWidget {
  const _FabInactiveIndex1();

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        heroTag: 'navigate_match',
        onPressed: () => _index1Tap(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        focusElevation: 0.0,
        hoverElevation: 0.0,
        highlightElevation: 0.0,
        child: const _Index1InactiveInner(),
      );
}

class _FabInactiveIndex2 extends StatelessWidget {
  const _FabInactiveIndex2();

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        heroTag: 'navigate_bioweek',
        onPressed: () => _index2Tap(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        focusElevation: 0.0,
        hoverElevation: 0.0,
        highlightElevation: 0.0,
        child: const _Index2InactiveInner(),
      );
}

class _Index0InactiveInner extends StatelessWidget {
  const _Index0InactiveInner();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Icon(
      size: fabIconSize,
      Icons.people_rounded,
      color: theme.panelsTextInactiveColor,
    );
  }
}

class _Index0ActiveInner extends StatelessWidget {
  const _Index0ActiveInner();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Icon(
      size: fabIconSize,
      Icons.people_rounded,
      color: theme.panelsColor,
    );
  }
}

class _Index1InactiveInner extends StatelessWidget {
  const _Index1InactiveInner();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Icon(
      size: fabIconSize,
      Icons.gps_not_fixed_rounded,
      color: theme.panelsTextInactiveColor,
    );
  }
}

class _Index1ActiveInner extends StatelessWidget {
  const _Index1ActiveInner();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Icon(
      size: fabIconSize,
      Icons.gps_not_fixed_rounded,
      color: theme.panelsColor,
    );
  }
}

class _Index2InactiveInner extends StatelessWidget {
  const _Index2InactiveInner();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Icon(
      size: fabIconSize,
      Icons.anchor_rounded,
      color: theme.panelsTextInactiveColor,
    );
  }
}

class _Index2ActiveInner extends StatelessWidget {
  const _Index2ActiveInner();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Icon(
      size: fabIconSize,
      Icons.anchor_rounded,
      color: theme.panelsColor,
    );
  }
}
