import 'package:flutter/material.dart';
import 'package:game_on/constants.dart';
import 'package:game_on/modals/otp_modal.dart';
import 'package:game_on/screens/login_screen.dart';
import 'package:game_on/widgets/custom_btn.dart';

class LoginModal extends StatelessWidget {
  const LoginModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      //  mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          "Hi!",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Let's Get Started",
          style: TextStyle(
              color: Color(0xff088F81),
              fontWeight: FontWeight.w400,
              letterSpacing: 1.2),
        ),
        const SizedBox(
          height: 35,
        ),
        Row(
          children: [
            const Text(
              "Enter Phone Number",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 10, 135, 123),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            Container()
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
              color: const Color(0xff088F81).withOpacity(0.1),
              border: Border.all(color: const Color(0xff088F81)),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              //  mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "+91",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "|",
                  style: TextStyle(
                    fontSize: 50,
                    height: 1,
                    color: const Color.fromARGB(255, 60, 153, 144)
                        .withOpacity(0.4),
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 15, left: 6),
                    width: 180,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "9900265566",
                          hintStyle: TextStyle(
                              color: Color(0xff088F81),
                              fontSize: 18,
                              letterSpacing: 1.1),
                          border: InputBorder.none),
                    ))
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 150,
        ),
       const CustomBtn(text: "Get OTP"),
        const SizedBox(
          height: 12,
        ),
        GestureDetector(
          onTap: (() {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (ctx) =>const LoginScreen(display: OtpModal())));
          }),
          child: const Text(
            "Have Pin?",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 16,
                decorationColor: kPrimaryColor,
                decoration: TextDecoration.underline,
                decorationThickness: 1.1,
                decorationStyle: TextDecorationStyle.solid),
          ),
        )
      ],
    );
  }
}
