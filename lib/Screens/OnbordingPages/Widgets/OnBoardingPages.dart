import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:medical_plants/GeneralWidgets/BottomNavigator.dart';
import 'package:medical_plants/Screens/LoginRegister/Widgets/MyButton.dart';
import 'package:medical_plants/Themes/MyColors.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => MyBottomNavigator()),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset(assetName, width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle =
        TextStyle(fontSize: 18.0, color: kSettingPageLogoAndFontsTilesColor);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 24.0, fontWeight: FontWeight.w700, color: kButtonColor),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,

      globalFooter: SizedBox(
        width: Get.width * 0.9,
        height: Get.height / 20,
      ),
      pages: [
        PageViewModel(
          title: 'مشاهده',
          body: 'یه عکس از گیاهای اطرافت بنداز',
          image: _buildImage('Assets/Images/On1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'اشتراک گذاری',
          body:
              'دای مپ رو باز کن و اطلاعات گیاهی که دیدی رو با بقیه به اشتراک بزار',
          image: _buildImage('Assets/Images/On2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'یادگیری',
          body:
              'در مورد دانسته های گیاهان دارویی بقیه بخون و به دانسته هات اضافه کن',
          image: _buildImage('Assets/Images/On2.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text(
        'بیخیال',
        style: TextStyle(color: kButtonColor),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: kButtonColor,
      ),
      done: const Text('! بریم',
          style: TextStyle(fontWeight: FontWeight.w600, color: kButtonColor)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: kButtonColor,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: kBackGroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
