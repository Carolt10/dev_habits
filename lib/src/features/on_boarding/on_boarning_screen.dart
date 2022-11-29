import 'package:dev_habits/src/config/app_assets.dart';
import 'package:dev_habits/src/config/app_colors.dart';
import 'package:dev_habits/src/config/app_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppAssets.onBoardingBackground,
              ),
              fit: BoxFit.fill),
        ),
        child: Align(
          alignment: Alignment(0, -0.8),
          child: Text(
            AppStrings.splashTitle,
            style: TextStyle(
              fontFamily: 'Klasik',
              fontWeight: FontWeight.w400,
              fontSize: 40,
              color: AppColors.eclipse,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
