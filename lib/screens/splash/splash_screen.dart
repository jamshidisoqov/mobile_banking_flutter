import 'package:flutter/material.dart';
import 'package:mobile_banking_flutter/core/extensions/navigator_extension.dart';
import 'package:mobile_banking_flutter/screens/widgets/main_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future(() async {
      await Future.delayed(const Duration(seconds: 2));
      await replace(Routes.main);
    });
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
          child: Image.asset(
        "assets/images/logo.png",
        width: 180,
      )),
    );
  }
}
