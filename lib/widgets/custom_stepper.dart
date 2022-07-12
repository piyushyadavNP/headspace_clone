import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/misc/app_colors.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomStepper extends StatelessWidget {
  bool? isTimeline;
  CustomStepper({Key? key, this.isTimeline = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isTimeline == true
        ? Column(
            children: [
              Container(
                height: 15,
                width: 15,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
              ),
              DottedLine(
                dashLength: 5,
                lineThickness: 1,
                dashColor: Colors.white,
                direction: Axis.vertical,
                lineLength: 120,
              ),
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, border: Border.all(color: white)),
              ),
              DottedLine(
                dashLength: 5,
                lineThickness: 1,
                dashColor: Colors.white,
                direction: Axis.vertical,
                lineLength: 110,
              ),
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, border: Border.all(color: white)),
              ),
            ],
          )
        : Container(
            margin: const EdgeInsets.only(top: 10),
            height: 15,
            width: 15,
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(color: white)),
          );
  }
}
