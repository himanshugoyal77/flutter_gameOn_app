import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  final Widget display;
  const LoginScreen({
    Key? key,
    required this.display,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: height / 3,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.wisden.com/wp-content/uploads/2021/01/GettyImages-468776434-e1610533327422-980x530.jpg"),
                      fit: BoxFit.cover)),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      radius: 0.8,
                      stops: const [
                        0.1,
                        0.1,
                      ],
                      colors: <Color>[
                        const Color(0xff088F81),
                        const Color(0xff088F81).withOpacity(0.7)
                      ],
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset("assets/logo.svg"),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 2 * (height / 3),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 28),
                    child: display),
              ),
            ),
          )
        ],
      )),
    );
  }
}
