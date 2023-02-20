import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobile_banking_flutter/screens/login/password/login_password_screen.dart';
import 'package:mobile_banking_flutter/screens/pin/pin_screen.dart';

import '../../widgets/click_appbar.dart';
import '../../widgets/main_button.dart';
import '../../widgets/number_item.dart';

class LoginVerifyScreen extends StatelessWidget {
  const LoginVerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
        mask: '######',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.eager);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            children: [
              CustomAppBar(
                "Ro'yxatdan o'tish",
                trailingImage: "assets/images/question.png",
                leadingImage: "assets/images/arrow_back.png",
              ),
              SizedBox(height: 10),
              Text(
                "SMS dagi kodni kiriting",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin:
                      EdgeInsets.only(left: 36, right: 36, top: 20, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: disableButtonColor,
                      border: Border.all(color: textFieldBorderColor)),
                  child: Container(
                      margin: EdgeInsets.only(bottom: 0),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            child: TextField(
                                readOnly: true,
                                showCursor: true,
                                cursorColor: clickDarkBlue,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: disableButtonColor,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    )),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left,
                                inputFormatters: [maskFormatter]),
                          ),
                          Spacer(),
                          Text(

                            "00:59",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.restart_alt_outlined,
                            color: Colors.white,
                          )
                        ],
                      ))),
              Container(
                height: 40,
                margin: EdgeInsets.only(bottom: 20,left: 60,right: 60),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Sms kodni quyidagi raqamga",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "yuborildi:",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "+998901234567",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
                  Spacer(
                    flex: 1,
                  ),
                  MainButton(title: "Davom etish", onPressed: () => {

                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) =>  LoginPasswordScreen())),

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
