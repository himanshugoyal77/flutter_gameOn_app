import 'package:flutter/material.dart';

import 'package:game_on/constants.dart';

class CustomBtn extends StatelessWidget {
  final bool shadow;
  final double height;
  final double width;

  final String text;
  const CustomBtn(
      {Key? key,
      required this.text,
      this.height = 45,
      this.width = 150,
      this.shadow = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          boxShadow: [shadow ? customShadow() : const BoxShadow()],
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
            fontSize: 14),
      )),
    );
  }
}
