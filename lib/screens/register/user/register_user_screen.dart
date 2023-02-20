import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobile_banking_flutter/screens/register/date/register_date_screen.dart';

import '../../widgets/click_appbar.dart';
import '../../widgets/main_button.dart';

class RegisterUserScreen extends StatelessWidget {
  const RegisterUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var maskFormatter =
        MaskTextInputFormatter(type: MaskAutoCompletionType.eager);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            children: [
              CustomAppBar(
                "Shaxsiy ma'lumot".tr(),
              ),
              SizedBox(height: 10),
              Text(
                "Ism va Familyangizni kiriting".tr(),
                style: TextStyle(
                    color: clickDarkBlue,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  margin:
                      EdgeInsets.only(left: 36, right: 36, top: 20, bottom: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: disableButtonColor,
                      border: Border.all(color: textFieldBorderColor)),
                  child: Container(
                      margin: EdgeInsets.only(bottom: 0),
                      alignment: Alignment.center,
                      child: TextField(
                          showCursor: true,
                          cursorColor: clickDarkBlue,
                          decoration: InputDecoration(
                              hintText: "Ismingiz",
                              hintStyle: TextStyle(color: textFieldBorderColor),
                              filled: true,
                              fillColor: disableButtonColor,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              )),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left,
                          inputFormatters: [maskFormatter]))),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  margin:
                      EdgeInsets.only(left: 36, right: 36, top: 10, bottom: 36),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: disableButtonColor,
                      border: Border.all(color: textFieldBorderColor)),
                  child: Container(
                      margin: EdgeInsets.only(bottom: 0),
                      alignment: Alignment.center,
                      child: TextField(
                          showCursor: true,
                          cursorColor: clickDarkBlue,
                          decoration: InputDecoration(
                              filled: true,
                              hintText: "Familyangiz",
                              hintStyle: TextStyle(color: textFieldBorderColor),
                              fillColor: disableButtonColor,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              )),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left,
                          inputFormatters: [maskFormatter]))),
              Spacer(),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                    margin: EdgeInsets.symmetric(vertical: 18, horizontal: 22),
                    child: GestureDetector(
                        onTap: () => {},
                        child: Text(
                          "O'tkazish".tr(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )),
                  ),

                  Spacer(),

                  MainButton(
                      title: "Davom etish".tr(),
                      onPressed: () => {
                            Navigator.push(context, MaterialPageRoute(builder:
                                (context) =>  RegisterDateScreen())),
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
