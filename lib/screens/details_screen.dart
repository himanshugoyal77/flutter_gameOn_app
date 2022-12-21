import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_on/constants.dart';

import '../widgets/book_now_card.dart';

class DetailScreen extends StatelessWidget {
  final Map<String, String> stadiumDetail;

  const DetailScreen({
    Key? key,
    required this.stadiumDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
            decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 28,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Ground Details",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ]),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const  Icon(
                Icons.calendar_month_outlined,
                size: 28,
                color: kPrimaryColor,
              ),
             const SizedBox(
                width: 8,
              ),
              Text(
                stadiumDetail["date"]!,
                style:const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                stadiumDetail["image"]!,
                height: 200,
                width: 340,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: SizedBox(
              height: height / 1.9,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stadiumDetail["name"]!,
                      style: const TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: kPrimaryColor,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Navigate",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decorationColor: kPrimaryColor,
                                decoration: TextDecoration.underline,
                                decorationThickness: 1.6,
                                decorationStyle: TextDecorationStyle.solid),
                          ),
                          Spacer(),
                          Text(
                            "Pitch type: Mat",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                         const Icon(
                            Icons.dining_rounded,
                            size: 22,
                            color: kPrimaryColor,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 6),
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color:const  Color(0xff088F81).withOpacity(0.2)),
                            child: const Icon(
                              Icons.train,
                              color: kPrimaryColor,
                            ),
                          ),
                         const Spacer(),
                          Container(
                            height: 22,
                            padding:const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color:const Color(0xff088F81).withOpacity(0.2)),
                            child: Row(
                              children: const [
                                Icon(
                                  CupertinoIcons.compass,
                                  size: 18,
                                  color: kPrimaryColor,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "2 Km far",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 126, 122, 122),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                   const SizedBox(
                      height: 18,
                    ),
                  const  BookNowCard(),
                   const BookNowCard(price: "6000", overs: "30", time: "03:00 am"),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
