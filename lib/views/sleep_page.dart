import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/views/meditate_page.dart';

import '../misc/app_colors.dart';

class Sleeppage extends StatefulWidget {
  const Sleeppage({Key? key}) : super(key: key);

  @override
  State<Sleeppage> createState() => _SleeppageState();
}

class _SleeppageState extends State<Sleeppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primary,
        body: SafeArea(
          child: ClipPath(
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
        ));
  }
}
