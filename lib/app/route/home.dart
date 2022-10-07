import 'package:flutter/widgets.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key, required this.implementation});
  final Widget implementation;

  @override
  Widget build(BuildContext context) => implementation;
}
