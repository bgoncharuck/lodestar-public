import 'package:flutter/widgets.dart';

class CompatibilityRoute extends StatelessWidget {
  const CompatibilityRoute({super.key, required this.implementation});
  final Widget implementation;

  @override
  Widget build(BuildContext context) => implementation;
}
