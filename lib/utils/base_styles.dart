import 'package:flutter/material.dart';

import 'package:basewidgets/utils/base_colors.dart';

class BaseStyle {
  static ThemeData get myTheme => ThemeData(
        primaryColor: Colors.white,
        cardColor: Colors.black,
        // ignore: deprecated_member_use
        cursorColor: Colors.black,
        accentColor: Colors.black,
        canvasColor: Colors.white,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );

  static BoxDecoration get gradientBackground1 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.0, 0.2, 0.5, 1],
          colors: [
            BaseColors.gradient1,
            BaseColors.gradient2,
            BaseColors.gradient3,
            BaseColors.blue
          ],
        ),
      );

  static LinearGradient get gradientBack => LinearGradient(colors: [
        BaseColors.gradient1,
        BaseColors.gradient2,
        BaseColors.gradient3,
      ]);

  static LinearGradient get gradientImage => LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.0,
            0.5,
            1
          ],
          colors: [
            BaseColors.gradient1,
            BaseColors.gradient2,
            BaseColors.gradient3,
          ]);

  static BoxDecoration get iconBackground => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.0, 0.2, 0.6, 1],
          colors: [
            BaseColors.gradient1,
            BaseColors.gradient2,
            BaseColors.gradient3,
            BaseColors.blue
          ],
        ),
      );

  static TextStyle get errorStyle => TextStyle(
        // fontFamily: BaseFonts.regular,
        color: BaseColors.red,
      );

  static TextStyle get hintStyle => TextStyle(
        // fontFamily: BaseFonts.light,
        color: BaseColors.black,
      );

  static TextStyle get helperStyle => TextStyle(
        //  fontFamily: BaseFonts.semiBold,
        color: BaseColors.black,
      );

  static TextStyle get counterStyle => TextStyle(
        // fontFamily: BaseFonts.regular,
        color: BaseColors.black,
      );

  static TextStyle get textStyle => TextStyle(
        //    fontFamily: BaseFonts.regular,
        color: BaseColors.black,
        fontSize: 14.0,
      );

  static TextStyle get flatButtonStyleLight => TextStyle(
        //   fontFamily: BaseFonts.regular,
        color: BaseColors.black,
        fontSize: 14.0,
      );

  static TextStyle get outlineButtonStyleLight => TextStyle(
        //   fontFamily: BaseFonts.semiBold,
        color: BaseColors.white,
        fontSize: 14.0,
      );

  static InputBorder get editTextWhiteBorder => UnderlineInputBorder(
        borderSide: BorderSide(
          color: BaseColors.black,
          width: 0.8,
        ),
      );

  static double get textHeightGap => 1.0;
}
//   static EdgeInsetsGeometry leftRightPadding(BuildContext context) =>
//       EdgeInsets.symmetric(horizontal: sizeByPercentage(context, false, 12),
//       );
// }
