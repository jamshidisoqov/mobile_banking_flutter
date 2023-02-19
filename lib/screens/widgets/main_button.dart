import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {  // *** Click ilovasida ko'p uchraydigan gradientli button uchun widget
  final String title;
  final bool enabled;
  final double? width;
  final double? height;
  final Function() onPressed;

  const MainButton({
    Key? key,
    required this.title,
    this.enabled = true,
    this.width,
    this.height,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: const Alignment(-1, -1),
            end: const Alignment(-1, 1),
            colors: enabled?[clickLightBlue, clickDarkBlue]:[disableButtonColor, disableButtonColor],
          ),
        ),
        child: Center(
            child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        )),
      ),
    );
  }
}

// ***  ***  ***  All app useful colors collection  ***  ***  ***

const clickLightBlue = Color(0xFF00BFFE);
const clickDarkBlue = Color(0xFF0074FE);
const backgroundColor = Color(0xFF252429);
const disableButtonColor = Color(0xFF35353F);
const textFieldColor = Color(0xFF2A2A32);
const textFieldBorderColor = Color(0xFF373741);
const itemBottomNavColor = Color(0xFFB0B6CC);
const shadowColor = Color(0xFF201F25);
