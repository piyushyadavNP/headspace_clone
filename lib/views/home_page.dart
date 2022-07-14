import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/misc/app_colors.dart';
import 'package:headspace_clone/utils/text_style.dart';
import 'package:headspace_clone/views/profile_page.dart';
import 'package:headspace_clone/widgets/box_decoration.dart';
import 'package:headspace_clone/widgets/chip_button.dart';
import 'package:headspace_clone/widgets/custom_stepper.dart';
import 'package:headspace_clone/widgets/video_player.dart';
import 'package:video_player/video_player.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.setVolume(0.0);
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: home,
        appBar: AppBar(
          backgroundColor: home,
          leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  icon: Icon(Icons.person_outline),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()));
                  })),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search_outlined),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Good afternoon, Piyush",
                      style: AppTextStyle.headline1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ChipButton(
                        text: "Favorites",
                      ),
                      ChipButton(
                        text: "Recent",
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20),
                    child: Text(
                      "Start your day",
                      style: AppTextStyle.headline3,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomStepper(
                        isTimeline: true,
                      ),
                      Column(
                        children: [
                          InkWell(
                            child: CommonBoxDecoration(
                              height: MediaQuery.of(context).size.height * 0.14,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Container(),
                              stackHeight: 150,
                              stackWidth: 150,
                              headingText: "Pause With 5 Calming Breaths",
                              playText: "Mindful Activity",
                              timeText: "1 min",
                              stackChild: Image.asset("assets/images/head.png"),
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: CommonBoxDecoration(
                              height: MediaQuery.of(context).size.height * 0.14,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Container(),
                              stackHeight: 150,
                              stackWidth: 150,
                              headingText: "Is Your Mind Running Wild?",
                              playText: "The Wake Up",
                              timeText: "3-7 min",
                              stackChild: Center(
                                child: _controller.value.isInitialized
                                    ? AspectRatio(
                                        aspectRatio:
                                            _controller.value.aspectRatio,
                                        child: VideoPlayer(_controller),
                                      )
                                    : Container(),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PlayerVideo()));
                            },
                          ),
                          CommonBoxDecoration(
                            height: MediaQuery.of(context).size.height * 0.14,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Container(),
                            stackHeight: 150,
                            stackWidth: 150,
                            headingText: "Everyday Life",
                            playText: "Today's Meditation",
                            timeText: "3-20 min",
                            stackChild: Image.asset("assets/images/head.png"),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20),
                    child: Text(
                      "Your afternoon lift",
                      style: AppTextStyle.headline3,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomStepper(
                        isTimeline: false,
                      ),
                      CommonBoxDecoration(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Container(),
                        stackHeight: 200,
                        stackWidth: 150,
                        headingText: "Mobility Mini",
                        playText: "Workout",
                        timeText: "14 min",
                        stackChild: Image.asset("assets/images/head.png"),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20),
                    child: Text(
                      "At night",
                      style: AppTextStyle.headline3,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomStepper(
                        isTimeline: false,
                      ),
                      CommonBoxDecoration(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Container(),
                        stackHeight: 500,
                        stackWidth: 150,
                        stackChild: Image.asset("assets/images/head.png"),
                        headingText: "Starlight Diner",
                        playText: "Sleepcast",
                        timeText: "45 min",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
