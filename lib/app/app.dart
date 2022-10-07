import 'package:flutter/widgets.dart';

class Application extends StatelessWidget {
  const Application({super.key, required this.implementation});
  final Widget implementation;

  @override
  Widget build(BuildContext context) => implementation;
}
