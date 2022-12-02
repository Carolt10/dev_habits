import 'package:dev_habits/src/config/app_colors.dart';
import 'package:flutter/cupertino.dart';

class AppStyles {
  static const titleStyle = TextStyle(
    fontFamily: 'Klasik',
    fontSize: 32,
    color: AppColors.eclipse,
    fontWeight: FontWeight.w400,
  );

  static const pStyleEclipse = TextStyle(
    fontFamily: 'Manrope',
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: AppColors.eclipse,
  );
  static const pStyleMorning = TextStyle(
    fontFamily: 'Manrope',
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: AppColors.morning,
  );
  static const buttonTextStyle = TextStyle(
    fontFamily: 'Manrope',
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.eclipse,
  );
}
