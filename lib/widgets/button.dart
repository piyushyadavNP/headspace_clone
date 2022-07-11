import 'package:flutter/material.dart';

class MaterialCommonButton extends StatelessWidget {
  String? text;
  Color? color;
  double size;
  VoidCallback onTap;
  bool? isImage = false;
  Image? image;
  MaterialCommonButton(
      {Key? key,
      required this.color,
      this.text = "button",
      required this.onTap,
      required this.size,
      required this.isImage,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: size,
        child: ElevatedButton(
          child: isImage == false
              ? Text(
                  text!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              : image,
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            elevation: 10,
            primary: color,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ));
  }
}
