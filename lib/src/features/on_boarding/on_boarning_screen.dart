import 'package:flutter/material.dart';
import 'package:dev_habits/src/config/app_assets.dart';
import 'package:dev_habits/src/config/app_colors.dart';
import 'package:dev_habits/src/config/app_strings.dart';
import 'package:dev_habits/src/config/app_styles.dart';
import 'package:dev_habits/src/features/home/home_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _actualPage = 1;
  @override
  Widget build(BuildContext context) {
    String title = '';
    String image = '';

    switch (_actualPage) {
      case 1:
        title = AppStrings.OnBoardingScreenTitle1;
        image = AppAssets.onBoardingImage1;
        break;
      case 2:
        title = AppStrings.OnBoardingScreenTitle2;
        image = AppAssets.onBoardingImage2;
        break;
      case 3:
        title = AppStrings.OnBoardingScreenTitle3;
        image = AppAssets.onBoardingImage3;
        break;
      case 4:
        title = AppStrings.OnBoardingScreenTitle4;
        image = AppAssets.onBoardingImage4;
        break;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: AppStyles.titleStyle,
                textAlign: TextAlign.center,
              ),
              Expanded(child: Image.asset(image)),
              Text.rich(
                TextSpan(
                  text: AppStrings.OnBoardingParagraphPart1,
                  style: AppStyles.pStyleEclipse,
                  children: [
                    TextSpan(
                      text: AppStrings.OnBoardingParagraphPart2,
                      style: AppStyles.pStyleMorning,
                    ),
                    TextSpan(
                      text: AppStrings.OnBoardingParagraphPart3,
                      style: AppStyles.pStyleEclipse,
                    ),
                    TextSpan(
                      text: AppStrings.OnBoardingParagraphPart4,
                      style: AppStyles.pStyleMorning,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 65,
              ),
              if (_actualPage < 4)
                _Pager(
                  actualPage: _actualPage,
                  onTapNext: () {
                    setState(() {
                      _actualPage++;
                    });
                  },
                  onTapSkip: () {
                    setState(() {
                      _actualPage = 4;
                    });
                  },
                )
              else
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => HomeScreen()));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: AppColors.darkMorning),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      AppStrings.getStarted,
                      style: AppStyles.buttonTextStyle,
                    ),
                  ),
                ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Pager extends StatelessWidget {
  const _Pager(
      {Key? key,
      required this.onTapSkip,
      required this.actualPage,
      required this.onTapNext})
      : super(key: key);
  final int actualPage;
  final VoidCallback onTapNext;
  final VoidCallback onTapSkip;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTapSkip,
          child: Text(
            AppStrings.skip,
            style: AppStyles.pStyleEclipse,
          ),
        ),
        Spacer(),
        _Indicator(selected: actualPage == 1),
        _Indicator(selected: actualPage == 2),
        _Indicator(selected: actualPage == 3),
        _Indicator(selected: actualPage == 4),
        Spacer(),
        InkWell(
          onTap: onTapNext,
          child: Text(
            AppStrings.next,
            style: AppStyles.pStyleEclipse,
          ),
        ),
      ],
    );
  }
}

class _Indicator extends StatelessWidget {
  const _Indicator({Key? key, required this.selected}) : super(key: key);
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: selected ? AppColors.eclipse : AppColors.morning,
      ),
      height: 15,
      width: 15,
    );
  }
}
