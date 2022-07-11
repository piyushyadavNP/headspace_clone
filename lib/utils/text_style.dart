import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Textstyle extends StatelessWidget {
  String? text;
  double? fontSize;
  FontWeight fontWeight;
  Color? color;
  TextAlign? textAlign;
  TextDecoration? decoration;
  double? decorationThickness;
  Textstyle(
      {Key? key,
      required this.text,
      required this.fontSize,
      required this.fontWeight,
      this.color,
      this.textAlign,
      this.decoration,
      this.decorationThickness})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          decoration: decoration,
          decorationThickness: decorationThickness,
        ));
  }
}
