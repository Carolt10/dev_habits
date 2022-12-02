import 'package:dev_habits/src/config/app_assets.dart';
import 'package:dev_habits/src/config/app_colors.dart';
import 'package:dev_habits/src/config/app_strings.dart';
import 'package:dev_habits/src/features/on_boarding/on_boarning_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
        ),
      ),
    );

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppAssets.splashScreenBackground,
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
