import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/misc/app_colors.dart';
import 'package:headspace_clone/utils/custom_clipper.dart';
import 'package:headspace_clone/widgets/button.dart';
import 'package:headspace_clone/widgets/tabbar_view.dart';

import '../utils/text_style.dart';

class Meditatepage extends StatefulWidget {
  const Meditatepage({Key? key}) : super(key: key);

  @override
  State<Meditatepage> createState() => _MeditatepageState();
}

class _MeditatepageState extends State<Meditatepage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
        backgroundColor: primary,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Expanded(
              child: Column(
                children: [
                  ClipPath(
                    clipper: clipPathClass(),
                    child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "assets/images/meditation.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "Featured",
                    style: AppTextStyle.subtitle1,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Burned Out",
                    style: AppTextStyle.headline1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.multitrack_audio,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
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
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialCommonButton(
                    color: Color.fromARGB(255, 47, 33, 243),
                    onPressed: () {},
                    size: 100,
                    isImage: false,
                    text: "Play",
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5, top: 30),
                        width: 250,
                        child: Column(
                          children: [
                            TabBar(
                              controller: tabController,
                              indicatorSize: TabBarIndicatorSize.label,
                              tabs: <Widget>[
                                Text(
                                  "Recent",
                                  style: AppTextStyle.headline3,
                                ),
                                Text(
                                  "Featured",
                                  style: AppTextStyle.headline3,
                                ),
                              ],
                            ),
                            Container(
                              height: 300,
                              child: TabBarView(
                                  controller: tabController,
                                  children: [CommonTabbar(), CommonTabbar()]),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
