import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../widgets/main_button.dart';
import '../date/register_date_screen.dart';
import '../phone_number/register_phone_screen.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const RegisterPhoneScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      imageAlignment: Alignment.bottomCenter,
      titleTextStyle: TextStyle(
          fontSize: 24.0, fontWeight: FontWeight.w700, color: clickDarkBlue),
      imagePadding: EdgeInsets.zero,
      bodyTextStyle: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.w700, color: Colors.white),
    );

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Ro'yxatdan o'tishda yordam".tr(),
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            // margin: EdgeInsets.only(top: 50),
            child: IntroductionScreen(
              key: introKey,
              globalBackgroundColor: backgroundColor,
              allowImplicitScrolling: true,
              globalFooter: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: MainButton(
                    title: "Ro'yxatdan o'tish".tr(),
                    onPressed: () => {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => RegisterPhoneScreen()),
                              (route) => false),
                        }),
              ),

              pages: [
                PageViewModel(
                  title: "QADAM 1".tr(),
                  body:
                      "Ro'yxatdan o'tish uchun \n istalgan ma'lumot kioskasidan \n SMS - "
                              "xabarnoma xizmatini \n ulatishingiz lozim"
                          .tr(),
                  image: Image.asset("assets/images/q1.png",
                      width: double.infinity),
                  decoration: pageDecoration,
                ),
                PageViewModel(
                  title: "QADAM 2".tr(),
                  body: "Telfom raqamini operator kodi bilan \n "
                          "kiriting"
                      .tr(),
                  image: Image.asset("assets/images/q2.png",
                      width: double.infinity),
                  decoration: pageDecoration,
                ),
                PageViewModel(
                  title: "QADAM 3".tr(),
                  body: "Qurilmangizni tasdiqlash uchun SMS \n "
                          "xabaridagi kodni kiriting"
                      .tr(),
                  image: Image.asset("assets/images/q3.png",
                      width: double.infinity),
                  decoration: pageDecoration,
                ),
                PageViewModel(
                  title: "QADAM 4".tr(),
                  body: "Kartangiz orqali har qanday \n "
                      "amaliyotni bajarish uchun 5 raqamli \n"
                      "CLICK-PINni o'rnating va tasdiqlang",
                  image: Image.asset("assets/images/q4.png".tr(),
                      width: double.infinity),
                  decoration: pageDecoration,
                ),
                PageViewModel(
                  title: "QADAM 5".tr(),
                  body: "Bank kartalaringizni qo'shing \n "
                          "va ilovaning barcha mavjud \n"
                          "imkoniyatlaridan foydalaning"
                      .tr(),
                  image: Image.asset("assets/images/q5.png",
                      width: double.infinity),
                  decoration: pageDecoration,
                ),
              ],
              // onDone: () => _onIntroEnd(context),
              // skipOrBackFlex: 0,
              // nextFlex: 0,
              showBackButton: false,
              showSkipButton: false,
              showDoneButton: false,
              showNextButton: false,
              // next:  Center(child: const Text('aaaa', style: TextStyle(fontWeight: FontWeight.w600))),
              // done: Center(child: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600))),
              curve: Curves.fastLinearToSlowEaseIn,
              dotsDecorator: const DotsDecorator(
                activeColor: clickDarkBlue,
                color: Color(0xFFBDBDBD),
                size: Size(6.0, 6.0),
                activeSize: Size(10.0, 10.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
