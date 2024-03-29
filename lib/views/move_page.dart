import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/misc/app_colors.dart';

import '../utils/custom_clipper.dart';
import '../utils/text_style.dart';
import '../widgets/button.dart';
import '../widgets/card_design.dart';
import '../widgets/tabbar_view.dart';

class Movepage extends StatefulWidget {
  const Movepage({Key? key}) : super(key: key);

  @override
  State<Movepage> createState() => _MovepageState();
}

class _MovepageState extends State<Movepage> with TickerProviderStateMixin {
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    TabController tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    scrollController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
        backgroundColor: primary,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                  "Morning Warm-up",
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
                      "Video",
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
                      "8 min",
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
                      width: MediaQuery.of(context).size.width * 0.9,
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
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                    child: Text(
                      "Today's meditation",
                      style: AppTextStyle.headline3,
                    ),
                  ),
                ),
                Commoncard(
                  scrollController: scrollController,
                )
              ],
            ),
          ),
        ));
  }
}
