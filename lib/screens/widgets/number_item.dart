import 'package:flutter/material.dart';
import 'package:mobile_banking_flutter/screens/widgets/main_button.dart';

class NumberItem extends StatelessWidget {  // *** PinCode va Register qismlaridagi raqamlar uchun widget
  final String title;
  final double? height;
  final double? width;
  final bool isSquare;
  final bool backOpacity;
  final String? img;
  final Function() onPressed;

  const NumberItem(
    this.title, {
    Key? key,
    this.height,
    this.width,
    this.isSquare = true,
    this.backOpacity = false,
    this.img,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: height,
          width: isSquare ? height : width,
          margin: const EdgeInsets.all(10),
          decoration: backOpacity
              ? null
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: disableButtonColor,
                  boxShadow: const [
                    BoxShadow(
                      color: shadowColor,
                      offset: Offset(1, 3),
                      blurRadius: 4,
                      spreadRadius: 3,
                    )
                  ],
                ),
          child: Center(
              child: img != null
                  ? Image.asset(
                      img!,
                      fit: BoxFit.fill,
                      height: 50,
                    )
                  : Text(
                      backOpacity ? "" : title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 26,
                        color: Colors.white,
                      ),
                    ))),
    );
  }
}
