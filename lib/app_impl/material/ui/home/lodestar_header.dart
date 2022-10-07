import 'package:flutter/material.dart';
import 'package:lodestar/app_impl/material/config/theme.dart';
import 'package:lodestar/app_impl/material/config/adaptive_formula.dart';
import 'package:lodestar/resources/text.dart' as text;

class LodestarHeader extends StatelessWidget {
  const LodestarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Padding(
      padding: EdgeInsets.only(top: adaptiveHeight(32.0)),
      child: Text(
        text.header,
        style: adaptiveTextStyle(theme.headerTextStyle!),
      ),
    );
  }
}
