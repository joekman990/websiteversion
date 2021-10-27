import 'package:flutter/material.dart';

import 'pallete.dart';

class CustomTheme {
  static ThemeData lightTheme(BuildContext context) {
    // final boyColor = Palette.primaryBlue;
    // final
    final theme = Theme.of(context);
    return ThemeData(
      primaryColor: Colors.white,
      // colorScheme: ColorScheme.fromSwatch(
      //   primarySwatch: MaterialColor(Palette.lightBlueGrey.value, const {
      //     100: Palette.lightGreyTransparent,
      //     200: Palette.green3,
      //     300: Palette.greyFour,
      //     400: Palette.lightGreyBlue,
      //     500: Palette.greyThree,
      //     600: Palette.blue1,
      //     700: Palette.lighterPink,
      //     800: Palette.greyOne,
      //     900: Palette.darkGrey,
      //   }),
      // ),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Palette.lightBlueGrey,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Palette.primaryBlue,
        ),
      ),
      textTheme: theme.primaryTextTheme
          .copyWith(
              button: theme.primaryTextTheme.button?.copyWith(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              bodyText1:
                  theme.textTheme.bodyText1?.copyWith(color: Colors.black))
          .apply(displayColor: Colors.black, bodyColor: Colors.black),
    );
  }
}

//   static ThemeData boyTheme(BuildContext context) {
//     final theme = Theme.of(context);
//     return ThemeData(
//       textButtonTheme: 
//     );
//   }
// }
