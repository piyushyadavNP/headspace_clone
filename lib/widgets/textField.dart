import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button extends StatelessWidget {
  String? labelText;
  TextEditingController? controller;
  Widget? suffix;
  TextInputType? textInputType;
  Button(
      {Key? key,
      required this.labelText,
      required this.controller,
      required this.textInputType,
      this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Theme(
          data: Theme.of(context).copyWith(splashColor: Colors.white),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.075,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFFFFFFF).withOpacity(0.3),
                ),
                borderRadius: BorderRadius.circular(13)),
            child: TextFormField(
              keyboardType: textInputType,
              controller: controller,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 14.0, top: 10.0),
                  border: InputBorder.none,
                  labelText: labelText,
                  suffix: suffix,
                  labelStyle: TextStyle(color: Colors.white, fontSize: 12),
                  focusColor: Colors.white,
                  floatingLabelBehavior: FloatingLabelBehavior.auto),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
