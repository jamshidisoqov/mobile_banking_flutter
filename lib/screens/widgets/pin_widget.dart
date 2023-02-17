import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_banking_flutter/screens/widgets/main_button.dart';

class PinWidget extends StatefulWidget {
  // *** PinCode kiritiladigan custom (ko'z, dumaloq va progressbar) widget
  const PinWidget({Key? key}) : super(key: key);

  @override
  State<PinWidget> createState() => _PinWidgetState();
}

class _PinWidgetState extends State<PinWidget> {
  var visible = false;
  var loading = true;
  var pinCount = 2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: Row(
        children: [
          const Spacer(flex: 4),
          GestureDetector(
            onTap: () {
              print("  * * * * ");
              visible = !visible;
            },
            child: Icon(
              size: 22,
              visible ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
              color: Colors.white,
            ),
          ),
          const Spacer(flex: 3),
          ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(4),
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: clickDarkBlue, width: 1, style: BorderStyle.solid),
                  color: pinCount > index ? clickDarkBlue : Colors.transparent,
                ),
              );
            },
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
          ), // dumaloq itemlar
          const Spacer(flex: 3),
          loading
              ? const SizedBox(
                  width: 22,
                  height: 22,
                  child: Padding(
                    padding: EdgeInsets.all(2),
                    child: CircularProgressIndicator(
                      color: clickDarkBlue,
                      strokeWidth: 3,
                    ),
                  ),
                )
              : const SizedBox(width: 22),
          const Spacer(flex: 4),
        ],
      ),
    );
  }
}
