import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/utils/text_style.dart';

class CommonTabbar extends StatelessWidget {
  const CommonTabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                child: Card(
                  elevation: 5,
                  child: Image.asset(
                    "assets/images/meditation.png",
                    scale: 50,
                  ),
                ),
              ),
              Expanded(
                child: Column(children: [
                  Text(
                    "Brun",
                    style: AppTextStyle.headline2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Meditation",
                    style: AppTextStyle.subtitle1,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "-",
                    style: AppTextStyle.subtitle1,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "3 min",
                    style: AppTextStyle.subtitle1,
                  )
                ]),
              )
            ],
          );
        });
  }
}
