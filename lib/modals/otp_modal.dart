import 'package:flutter/material.dart';

import 'package:game_on/constants.dart';
import 'package:game_on/screens/grounds.dart';
import 'package:game_on/widgets/custom_btn.dart';

class OtpModal extends StatelessWidget {
  const OtpModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Enter OTP",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        const SizedBox(
          height: 28,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              OtpBox(
                isAsteric: true,
              ),
              OtpBox(
                isAsteric: true,
              ),
              OtpBox(),
              OtpBox(),
            ],
          ),
        ),
        const SizedBox(
          height: 28,
        ),
        const Text(
          "OTP send to 9900265566",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              letterSpacing: 1.1,
              color: kPrimaryColor),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "🕒",
              style: TextStyle(fontSize: 18, color: kPrimaryColor),
            ),
            Text(
              " 00:59",
              style: TextStyle(
                  fontSize: 16,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            ),
          ],
        ),
        const SizedBox(
          height: 120,
        ),
        GestureDetector(
          onTap: (() {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => const Grounds()));
          }),
          child: const CustomBtn(
            text: "Login",
          ),
        )
      ],
    );
  }
}

class OtpBox extends StatelessWidget {
  final bool isAsteric;
  const OtpBox({
    Key? key,
    this.isAsteric = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kPrimaryColor)),
      child: isAsteric
          ? const Center(
              child: Text(
              "✱",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                  fontSize: 16),
            ))
          : Container(),
    );
  }
}
