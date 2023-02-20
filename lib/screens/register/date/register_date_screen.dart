import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobile_banking_flutter/screens/register/password/register_password_screen.dart';

import '../../main/main_screen.dart';
import '../../widgets/click_appbar.dart';
import '../../widgets/main_button.dart';

class RegisterDateScreen extends StatefulWidget {
  const RegisterDateScreen({Key? key}) : super(key: key);

  @override
  _RegisterDateScreenState createState() => _RegisterDateScreenState();
}

class _RegisterDateScreenState extends State<RegisterDateScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
        mask: '##.##.####',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.eager);

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            children: [
              CustomAppBar(
                "Shaxsiy ma'lumot".tr(),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Qachon tug'ilgansiz".tr(),
                style: const TextStyle(
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
              Container(
                height: 250,
                child: Container(
                  color: backgroundColor,
                  child: ColorFiltered(
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.difference),
                    child: CupertinoDatePicker(
                      backgroundColor: Color(0xffdadbd6),
                      minimumDate: DateTime.utc(1900, 1, 1),
                      maximumDate: DateTime.now(),
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: DateTime(1980, 1, 1),
                      onDateTimeChanged: (DateTime newDateTime) {},
                    ),
                  ),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  MainButton(
                      title: "Davom etish".tr(),
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterPasswordScreen()))
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
