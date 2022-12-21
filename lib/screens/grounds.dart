import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_on/constants.dart';

import '../widgets/date_picker.dart';
import '../widgets/ground_card.dart';
class Grounds extends StatelessWidget {
  const Grounds({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
              decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
               const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 28,
                ),
             const   SizedBox(
                  width: 20,
                ),
              const  Text(
                  "Grounds",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
             const   Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const[
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                      size: 28,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      CupertinoIcons.slider_horizontal_3,
                      color: Colors.white,
                      size: 28,
                    ),
                  ],
                )
              ]),
            ),
            const CustomDatePicker(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 220, 218, 218),
                    width: 0.9,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: const [
                    Icon(
                      Icons.location_on_outlined,
                      color: kPrimaryColor,
                      size: 24,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Maharashtra, India",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Change",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                      color: kPrimaryColor,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 2 * (height / 2.9),
              child: SingleChildScrollView(
                child: Column(
                  children:
                      Stadium.data.map((e) => GroundCard(stadium: e)).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
