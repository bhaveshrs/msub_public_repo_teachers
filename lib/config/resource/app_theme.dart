import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teachers_app/config/resource/app_colors.dart';

// class AppThemes {
//   static final kLightThemeData = ThemeData(
//     colorScheme: const ColorScheme.dark(
//         onPrimary: AppColors.white, // selected text color
//         onSurface: AppColors.white, // default text color
//         primary: AppColors.primaryColor // circle color
//         ),
//     dialogBackgroundColor: AppColors.backgroundColor,
//     textButtonTheme: TextButtonThemeData(
//       style: TextButton.styleFrom(
//         foregroundColor: AppColors.white,
//       ),
//     ),
//     primaryColor: AppColors.primaryColor,
//     secondaryHeaderColor: AppColors.secondary,
//     fontFamily: 'nunito',
//     primarySwatch: AppColors.deepOrange,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.k2c2c2e,
//       systemOverlayStyle: SystemUiOverlayStyle(
//         statusBarBrightness:
//             Brightness.dark, //<-- For iOS SEE HERE (dark icons)
//       ),
//     ),
//     scaffoldBackgroundColor: AppColors.k181818,
//   );
// }
class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: AppColors.blue3,
      onPrimary: AppColors.white,
      secondary: AppColors.blue2,
      onSurface: AppColors.black,
    ),
    primaryColor: AppColors.blue3,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: 'Nunito', // Set default font family
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.blue3,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light, // Dark icons for iOS
          statusBarColor: Colors.transparent),
      elevation: 0,
      titleTextStyle: TextStyle(
        fontFamily: 'Nunito',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColors.blue3,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
      ),
    ),
  );
}
