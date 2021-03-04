
import 'package:coding_test/ui/styles/colors.dart';
import 'package:flutter/material.dart';

extension fontSizeExt on TextStyle {

  TextStyle get size10 => this.copyWith(fontSize: 10);

  TextStyle get size12 => this.copyWith(fontSize: 12);

  TextStyle get size14 => this.copyWith(fontSize: 14);

  TextStyle get size16 => this.copyWith(fontSize: 16);

  TextStyle get size18 => this.copyWith(fontSize: 18);

  TextStyle get size20 => this.copyWith(fontSize: 20);

  TextStyle get size22 => this.copyWith(fontSize: 22);

  TextStyle get size24 => this.copyWith(fontSize: 24);

  TextStyle get size26 => this.copyWith(fontSize: 26);

  TextStyle get size28 => this.copyWith(fontSize: 28);

  TextStyle get size32 => this.copyWith(fontSize: 32);
}

extension colorExtTextStyle on TextStyle {

  TextStyle get colorWhite => this.copyWith(color: Colors.white);
  TextStyle get colorBlack => this.copyWith(color: Colors.black);
  TextStyle get waterMelon => this.copyWith(color: ColorsList.watermelon);


}

/// Roboto Regular weight: 400
final TextStyle regular = TextStyle(
    fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400, fontStyle: FontStyle.normal);

/// Roboto Medium weight: 500
final TextStyle medium = TextStyle(
    fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal);

/// Roboto Bold weight: 700
final TextStyle bold = TextStyle(
    fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal);