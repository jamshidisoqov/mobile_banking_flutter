import 'package:flutter/material.dart';
import 'package:mobile_banking_flutter/screens/widgets/main_button.dart';

import '../register/help/help_screen.dart';

class CustomAppBar extends StatelessWidget {
  // *** Takrorlanadigan app bar uchun widget
  final String? leadingImage;
  final String? trailingImage;
  final String title;

  const CustomAppBar(
    this.title, {
    Key? key,
    this.leadingImage,
    this.trailingImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      child: Row(
        children: [
          leadingImage != null
              ? GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    leadingImage!,
                    width: 20,
                    color: Colors.white,
                  ))
              : const SizedBox(width: 40),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          trailingImage != null
              ? GestureDetector(
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  HelpScreen())),
            },
                  child: Image.asset(
                    trailingImage!,
                    width: 20,
                    color: clickDarkBlue,
                  ),
                )
              : const SizedBox(width: 40),
        ],
      ),
    );
  }
}
