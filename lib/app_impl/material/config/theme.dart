import 'package:flutter/material.dart';

@immutable
class AppTheme extends ThemeExtension<AppTheme> {
  const AppTheme({
    required this.panelsColor,
    required this.panelsTextColor,
    required this.panelsTextInactiveColor,
    required this.datePickerTextStyle,
    required this.datePickerLabelTextStyle,
    required this.headerTextStyle,
    required this.bioLabelTextStyle,
    required this.bioSubLabelTextStyle,
    required this.descriptionTextStyle,
    required this.sortingProviderLabelTextStyle,
    required this.matchValueTextStyle,
    required this.percentTextStyle,
    required this.buttonTextStyle,
  });

  final Color? panelsColor;
  final Color? panelsTextColor;
  final Color? panelsTextInactiveColor;
  final TextStyle? datePickerTextStyle;
  final TextStyle? datePickerLabelTextStyle;
  final TextStyle? headerTextStyle;
  final TextStyle? bioLabelTextStyle;
  final TextStyle? bioSubLabelTextStyle;
  final TextStyle? descriptionTextStyle;
  final TextStyle? sortingProviderLabelTextStyle;
  final TextStyle? matchValueTextStyle;
  final TextStyle? percentTextStyle;
  final TextStyle? buttonTextStyle;

  @override
  AppTheme copyWith({
    Color? panelsColor,
    Color? panelsTextColor,
    Color? panelsTextInactiveColor,
    TextStyle? datePickerTextStyle,
    TextStyle? datePickerLabelTextStyle,
    TextStyle? headerTextStyle,
    TextStyle? bioLabelTextStyle,
    TextStyle? bioSubLabelTextStyle,
    TextStyle? descriptionTextStyle,
    TextStyle? sortingProviderLabelTextStyle,
    TextStyle? matchValueTextStyle,
    TextStyle? percentTextStyle,
    TextStyle? buttonTextStyle,
  }) {
    return AppTheme(
      panelsColor: panelsColor ?? this.panelsColor,
      panelsTextColor: panelsTextColor ?? this.panelsTextColor,
      panelsTextInactiveColor: panelsTextInactiveColor ?? this.panelsTextInactiveColor,
      datePickerTextStyle: datePickerTextStyle ?? this.datePickerTextStyle,
      datePickerLabelTextStyle: datePickerLabelTextStyle ?? this.datePickerLabelTextStyle,
      headerTextStyle: headerTextStyle ?? this.headerTextStyle,
      bioLabelTextStyle: bioLabelTextStyle ?? this.bioLabelTextStyle,
      bioSubLabelTextStyle: bioSubLabelTextStyle ?? this.bioSubLabelTextStyle,
      descriptionTextStyle: descriptionTextStyle ?? this.descriptionTextStyle,
      sortingProviderLabelTextStyle: sortingProviderLabelTextStyle ?? this.sortingProviderLabelTextStyle,
      matchValueTextStyle: matchValueTextStyle ?? this.matchValueTextStyle,
      percentTextStyle: percentTextStyle ?? this.percentTextStyle,
      buttonTextStyle: buttonTextStyle ?? this.buttonTextStyle,
    );
  }

  @override
  AppTheme lerp(ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) {
      return this;
    }
    return AppTheme(
      panelsColor: Color.lerp(panelsColor, other.panelsColor, t),
      panelsTextColor: Color.lerp(panelsTextColor, other.panelsTextColor, t),
      panelsTextInactiveColor: Color.lerp(panelsTextInactiveColor, other.panelsTextInactiveColor, t),
      datePickerTextStyle: TextStyle.lerp(datePickerTextStyle, other.datePickerTextStyle, t),
      datePickerLabelTextStyle: TextStyle.lerp(datePickerLabelTextStyle, other.datePickerLabelTextStyle, t),
      headerTextStyle: TextStyle.lerp(headerTextStyle, other.headerTextStyle, t),
      bioLabelTextStyle: TextStyle.lerp(bioLabelTextStyle, other.bioLabelTextStyle, t),
      bioSubLabelTextStyle: TextStyle.lerp(bioSubLabelTextStyle, other.bioSubLabelTextStyle, t),
      descriptionTextStyle: TextStyle.lerp(descriptionTextStyle, other.descriptionTextStyle, t),
      sortingProviderLabelTextStyle:
          TextStyle.lerp(sortingProviderLabelTextStyle, other.sortingProviderLabelTextStyle, t),
      matchValueTextStyle: TextStyle.lerp(matchValueTextStyle, other.matchValueTextStyle, t),
      percentTextStyle: TextStyle.lerp(percentTextStyle, other.percentTextStyle, t),
      buttonTextStyle: TextStyle.lerp(buttonTextStyle, other.buttonTextStyle, t),
    );
  }

  @override
  String toString() => 'AppTheme('
      'panelsColor: $panelsColor,'
      'panelsTextColor: $panelsTextColor,'
      'panelsTextInactiveColor: $panelsTextInactiveColor,'
      'datePickerTextStyle: $datePickerTextStyle,'
      'datePickerLabelTextStyle: $datePickerLabelTextStyle,'
      'headerTextStyle: $headerTextStyle,'
      'bioLabelTextStyle: bioLabelTextStyle $bioLabelTextStyle,'
      'bioSubLabelTextStyle: bioSubLabelTextStyle $bioSubLabelTextStyle,'
      'descriptionTextStyle: descriptionTextStyle $descriptionTextStyle,'
      'sortingProviderLabelTextStyle: sortingProviderLabelTextStyle $sortingProviderLabelTextStyle,'
      'matchValueTextStyle: matchValueTextStyle $matchValueTextStyle,'
      'percentTextStyle: percentTextStyle $percentTextStyle,'
      'buttonTextStyle: buttonTextStyle $buttonTextStyle,'
      ')';

  static const light = AppTheme(
    panelsColor: Colors.blue,
    panelsTextColor: Colors.white,
    panelsTextInactiveColor: Colors.white60,
    datePickerTextStyle: TextStyle(
      fontSize: 28.0,
    ),
    datePickerLabelTextStyle: TextStyle(
      fontSize: 18.0,
    ),
    headerTextStyle: TextStyle(
      fontSize: 28.0,
      fontFamily: 'DancingScript',
    ),
    bioLabelTextStyle: TextStyle(fontSize: 18),
    bioSubLabelTextStyle: TextStyle(fontSize: 14, color: Colors.grey),
    descriptionTextStyle: TextStyle(fontSize: 16),
    sortingProviderLabelTextStyle: TextStyle(),
    matchValueTextStyle: TextStyle(),
    percentTextStyle: TextStyle(fontSize: 18, color: Color(0xFF448aff)),
    buttonTextStyle: TextStyle(fontSize: 20),
  );
}
