import 'package:flutter/widgets.dart';

class MatchRoute extends StatelessWidget {
  const MatchRoute({super.key, required this.implementation});
  final Widget implementation;

  @override
  Widget build(BuildContext context) => implementation;
}
