import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:headspace_clone/utils/text_style.dart';
import 'package:headspace_clone/views/meditate_page.dart';

import '../misc/app_colors.dart';

class Focuspage extends StatefulWidget {
  const Focuspage({Key? key}) : super(key: key);

  @override
  State<Focuspage> createState() => _FocuspageState();
}

class _FocuspageState extends State<Focuspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primary,
        body: SafeArea(
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
              )
            ],
          ),
        ));
  }
}
