import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/misc/app_colors.dart';
import 'package:headspace_clone/utils/text_style.dart';

class Commoncard extends StatelessWidget {
  Commoncard({Key? key, this.scrollController}) : super(key: key);
  ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          controller: scrollController,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Card(
                color: card,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 20, bottom: 10, right: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Courses and singless",
                              style: AppTextStyle.headline3,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Guided meditation for any moment",
                              style: AppTextStyle.subtitle2,
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          "assets/images/meditation.png",
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}

class CommonSingleCard extends StatelessWidget {
  const CommonSingleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Card(
        color: card,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10.0, left: 20, bottom: 10, right: 10),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Courses and singless",
                      style: AppTextStyle.headline3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Guided meditation for any moment",
                      style: AppTextStyle.subtitle2,
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Image.asset(
                  "assets/images/meditation.png",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
