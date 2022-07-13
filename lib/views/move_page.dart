import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/misc/app_colors.dart';

import '../utils/custom_clipper.dart';

class Movepage extends StatefulWidget {
  const Movepage({Key? key}) : super(key: key);

  @override
  State<Movepage> createState() => _MovepageState();
}

class _MovepageState extends State<Movepage> {
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
