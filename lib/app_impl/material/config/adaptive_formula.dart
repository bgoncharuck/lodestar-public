import 'package:flutter/material.dart';

late final double _screenHeight;
late final double _screenWidth;
bool adaptiveScreenIsNotInitialized = true;

const _maxHeight = 812;
const _maxWidth = 375;

void setScreenHeight(double height) => _screenHeight = height;
void setScreenWidth(double width) => _screenWidth = width;

double adaptiveHeight(double elementHeight, {double? screenHeight}) =>
    (screenHeight ?? _screenHeight) * elementHeight / _maxHeight;

double adaptiveWidth(double elementWidth, {double? screenWidth}) =>
    (screenWidth ?? _screenWidth) * elementWidth / _maxWidth;

double adaptiveFontSize(TextStyle textStyle, {double? screenWidth}) =>
    ((screenWidth ?? _screenWidth) * textStyle.fontSize! / _maxWidth).floor().toDouble();

double adaptiveFontSizeRaw(double fontSize, {double? screenWidth}) =>
    ((screenWidth ?? _screenWidth) * fontSize / _maxWidth).floor().toDouble();

TextStyle adaptiveTextStyle(TextStyle textStyle, {double? screenWidth}) =>
    textStyle.copyWith(fontSize: ((screenWidth ?? _screenWidth) * textStyle.fontSize! / _maxWidth).floor().toDouble());
