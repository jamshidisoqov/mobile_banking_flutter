import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking_flutter/screens/main/main_screen.dart';

import '../../widgets/click_appbar.dart';
import '../../widgets/main_button.dart';
import '../../widgets/number_item.dart';
import '../../widgets/pin_widget.dart';

class LoginPasswordScreen extends StatelessWidget {
  const LoginPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            children: [
              CustomAppBar(
                "register".tr(),
                leadingImage: "assets/images/arrow_back.png",
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "CLICK-PIN kiring".tr(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              PinWidget(),
              SizedBox(height: 66),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return NumberItem(
                        index == 10 ? '0' : '${index + 1}',
                        backOpacity: index == 9 || index == 11,
                        img: index == 11 ? "assets/images/eraser.png" : null,
                        onPressed: () {},
                      );
                    },
                    itemCount: 12,
                    addRepaintBoundaries: false,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 18, horizontal: 22),
                    child: GestureDetector(
                      onTap: () => {},
                      child: Column(
                        children: [
                          Text(
                            "CLICK-PIN yoddan".tr(),
                            style: const TextStyle(
                                color: textFieldBorderColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "chiqardingizmi?".tr(),
                            style: const TextStyle(
                                color: textFieldBorderColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  MainButton(title: "Davom etish".tr(), onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) =>  MainScreen())),
                  })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
