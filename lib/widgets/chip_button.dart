import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/utils/text_style.dart';
import 'package:headspace_clone/widgets/box_decoration.dart';

class ChipButton extends StatelessWidget {
  String? text;
  ChipButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 20),
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DottedBorder(
            color: Colors.white,
            borderType: BorderType.RRect,
            radius: Radius.circular(20),
            padding: EdgeInsets.all(6),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  height: 10,
                  width: 10,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 10,
                  ),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text!,
            style: AppTextStyle.subtitle1,
          ),
        ),
      ]),
    );
  }
}
