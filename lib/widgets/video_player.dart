import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/misc/app_colors.dart';
import 'package:headspace_clone/widgets/video_controls.dart';
import 'package:video_player/video_player.dart';

class PlayerVideo extends StatefulWidget {
  const PlayerVideo({Key? key}) : super(key: key);

  @override
  State<PlayerVideo> createState() => _PlayerVideoState();
}

class _PlayerVideoState extends State<PlayerVideo> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));

    _videoPlayerController.addListener(() {
      setState(() {});
    });
    _videoPlayerController.setLooping(true);
    _videoPlayerController.initialize();
    _videoPlayerController.play();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      )),
      backgroundColor: primary,
      body: SafeArea(
        child: Center(
          child: _videoPlayerController.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    VideoPlayer(_videoPlayerController),
                    PlayerController(controller: _videoPlayerController),
                    VideoProgressIndicator(_videoPlayerController,
                        allowScrubbing: true),
                  ]),
                )
              : Container(),
        ),
      ),
    );
  }
}
