import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobile_banking_flutter/screens/widgets/click_appbar.dart';

import '../../widgets/main_button.dart';
import '../../widgets/number_item.dart';
import '../../widgets/pin_widget.dart';
import '../verify/login_verify_screen.dart';

class LoginPhoneScreen extends StatelessWidget {
  const LoginPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
        mask: '+998 (##) ### ## ##',
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
                "Ro'yxatdan o'tish".tr(),
                trailingImage: "assets/images/question.png",
              ),
              SizedBox(height: 10),
               Text(
                "Telefon raqamingizni kiriting".tr(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
              padding: EdgeInsets.symmetric(horizontal: 10),

                  alignment: Alignment.center,
                  margin:
                      EdgeInsets.only(left: 36, right: 36, top: 20, bottom: 36),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: disableButtonColor,
                      border: Border.all(color: textFieldBorderColor)),
                  child: Container(
                      margin: EdgeInsets.only(bottom: 0),
                      alignment: Alignment.center,
                      child: TextField(
                          readOnly: true,
                          showCursor: true,
                          cursorColor: clickDarkBlue,
                          decoration: InputDecoration(
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
                          textAlign: TextAlign.center,
                          inputFormatters: [maskFormatter]))),
              SizedBox(height: 30),
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
                  MainButton(title: "Davom etish".tr(), onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder:
                  (context) =>  LoginVerifyScreen())),
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
