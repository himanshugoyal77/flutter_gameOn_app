import 'package:flutter/material.dart';

import '../constants.dart';
import 'custom_btn.dart';
import 'horizontal_line.dart';

class BookNowCard extends StatelessWidget {
  final String overs;
  final String price, time;

  const BookNowCard({
    Key? key,
    this.overs = "20",
    this.price = "3000",
    this.time = "10:00 am",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          bottom: 18,
        ),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "For $overs overs",
                  style: const TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Chip(
                  visualDensity: VisualDensity.compact,
                  side: const BorderSide(color: kPrimaryColor),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  label: Text(time),
                  labelStyle: const TextStyle(
                      fontSize: 10, color: kPrimaryColor, letterSpacing: 1.1),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const  Text(
                      "Team 1:",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  const  Text(
                      "Mumbai Indians",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Chip(
                      visualDensity: VisualDensity.compact,
                      backgroundColor: Colors.black12,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      label: const Text("Booked"),
                      labelStyle: const TextStyle(
                          fontSize: 11,
                          color: kPrimaryColor,
                          letterSpacing: 1.1),
                    ),
                  ],
                ),
               const Spacer(
                  flex: 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text(
                      "Team 2:",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                   const Text(
                      "Available",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Chip(
                      visualDensity: VisualDensity.compact,
                      backgroundColor: kPrimaryColor.withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      label: const Text("Available"),
                      labelStyle: const TextStyle(
                          fontSize: 11,
                          color: kPrimaryColor,
                          letterSpacing: 1.1),
                    ),
                  ],
                ),
               const Spacer(
                  flex: 1,
                )
              ],
            ),
           const HorizontalLine(),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Row(
                children: [
                 const Text(
                    "Ball Provided",
                    style: TextStyle(
                      color: Color.fromARGB(255, 126, 122, 122),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Checkbox(
                      visualDensity:
                        const  VisualDensity(horizontal: -4.0, vertical: -4.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      checkColor: kPrimaryColor,
                      activeColor: Colors.black54,
                      fillColor: MaterialStateProperty.all(Colors.grey[200]),
                      side: const BorderSide(
                        color: Color.fromARGB(41, 186, 6, 60),
                      ),
                      value: true,
                      onChanged: (_) {}),
                 const Spacer(),
                 const Text(
                    "Umpire Provided",
                    style: TextStyle(
                      color: Color.fromARGB(255, 126, 122, 122),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Checkbox(
                      visualDensity:
                       const   VisualDensity(horizontal: -4.0, vertical: -4.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      checkColor: kPrimaryColor,
                      activeColor: Colors.black54,
                      overlayColor: MaterialStateProperty.all(Colors.grey[200]),
                      fillColor: MaterialStateProperty.all(kPrimaryColor),
                      side:const BorderSide(
                        color: Color.fromARGB(41, 186, 6, 60),
                      ),
                      value: false,
                      onChanged: (_) {}),
                const  Spacer(),
                  Row(
                    children:const [
                      Text(
                        "Ball Detail:",
                        style: TextStyle(
                          color: Color.fromARGB(255, 126, 122, 122),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        " Tennis",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              //  crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "₹ $price",
                  style:const TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              const  Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: CustomBtn(
                    shadow: false,
                    text: "Book now",
                    height: 34,
                    width: 100,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
