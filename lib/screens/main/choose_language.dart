import 'package:flutter/material.dart';
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
              title: 'Русский', onPressed: () {},
            ),
            MainButton(
              height: 60,
              width: 190,
              title: 'O‘zbek', onPressed: () {},
            ),
            MainButton(
              height: 60,
              width: 190,
              title: 'English', onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
