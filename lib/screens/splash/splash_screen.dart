import 'package:flutter/material.dart';
import 'package:mobile_banking_flutter/screens/pin/pin_screen.dart';
import 'package:mobile_banking_flutter/screens/widgets/main_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future(() async {
      await Future.delayed(Duration(seconds: 2));
      await Navigator.push(context, MaterialPageRoute(builder: (context) => const PinCodeScreen()));
    });
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        child: Center(
            child: Image.asset(
          "assets/images/logo.png",
          width: 180,
        )),
      ),
    );
  }
}
