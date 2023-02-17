import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {  // *** Takrorlanadigan app bar uchun widget
  final String? leadingImage;
  final String? trailingImage;
  final String title;
  const CustomAppBar( this.title, {Key? key, this.leadingImage, this.trailingImage,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      child: Row(
        children: [
          leadingImage!=null?Image.asset(leadingImage!, width: 40,):const SizedBox(width: 40),
          const Spacer(),
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
          const Spacer(),
          trailingImage!=null?Image.asset(trailingImage!, width: 40):const SizedBox(width: 40),
        ],
      ),
    );
  }
}
