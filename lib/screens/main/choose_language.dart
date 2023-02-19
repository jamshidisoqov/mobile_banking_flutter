import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking_flutter/core/extensions/navigator_extension.dart';
import '../widgets/main_button.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MainButton(
              height: 60,
              width: 190,
              title: 'Русский', onPressed: () {
                changeLanguage(context, "ru");
            },
            ),
            MainButton(
              height: 60,
              width: 190,
              title: 'O‘zbek', onPressed: () {
              changeLanguage(context, "uz");
            },
            ),
            MainButton(
              height: 60,
              width: 190,
              title: 'English', onPressed: () {
              changeLanguage(context, "en");
            },
            ),
          ],
        ),
      ),
    );
  }

  void changeLanguage(BuildContext context, String lang) {
    context.setLocale(Locale(lang));
    replace(Routes.main);
    // pop();
  }
}
