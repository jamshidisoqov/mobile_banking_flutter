import 'package:flutter/material.dart';
import 'package:mobile_banking_flutter/screens/widgets/click_appbar.dart';
import 'package:mobile_banking_flutter/screens/widgets/main_button.dart';
import 'package:mobile_banking_flutter/screens/widgets/number_item.dart';
import 'package:mobile_banking_flutter/screens/widgets/pin_widget.dart';

class PinCodeScreen extends StatelessWidget {
  const PinCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            children: [
              CustomAppBar("Ro'yxatdan o'tish", leadingImage: "assets/images/back.png",),
              Text("CLICK-PIN kiriting", style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
              PinWidget(),
              Expanded(flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return NumberItem('${index + 1}', backOpacity: index==9 || index==11,  img: index==11? "assets/images/eraser.png": null, onPressed: () {  },);
                    },
                    itemCount: 12,
                  ),
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
