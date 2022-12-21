import 'package:flutter/material.dart';

const MaterialColor kPrimaryColor = MaterialColor(
  0xff088F81,
  <int, Color>{
    50: Color(0xff088F81),
    100: Color(0xff088F81),
    200: Color(0xff088F81),
    300: Color(0xff088F81),
    400: Color(0xff088F81),
    500: Color(0xff088F81),
    600: Color(0xff088F81),
    700: Color(0xff088F81),
    800: Color(0xff088F81),
    900: Color(0xff088F81),
  },
);

class Stadium {
  static final data = [
    {
      'id': "0",
      "image":
          'https://www.mumbailive.com/images/media/images/images_1585906119977_DJI_0488.JPG?bg=353b33&crop=2449%2C1374.877192982456%2C0%2C129.06140350877195&fit=crop&fm=webp&h=768&height=1633&w=1368&width=2449',
      "name": "Wankhede International Cricket Stadium",
      "city": "Mumbai, Maharashtra",
      "navigate": "Navigate",
      "date": "Sunday, 21 June 2022"
    },
    {
      'id': "1",
      "image":
          'https://thelogicalindian.com/h-upload/2022/01/19/1600x960_210800-untitled-design-2022-01-19t170114195.jpg',
      "name": "Narendar Modi Stadium",
      "city": "Gujrat, Ahmedabad",
      "navigate": "Only 4 Km far",
      "date": "Sunday, 12 August 2022"
    },
    {
      'id': "2",
      "image":
          'https://images.newindianexpress.com/uploads/user/imagelibrary/2020/6/11/w600X390/Jawaharlal_Nehru_Stadium.jpg',
      "name": "Javaherlal nehru Stadium",
      "city": "Delhi NCR, Delhi",
      "navigate": "Only 2 Km far",
      "date": "Saturday, 25 December 2022"
    },
  ];
}


  BoxShadow customShadow() {
    return BoxShadow(
                color: Colors.black26,
                spreadRadius: 0.8,
                blurRadius: 12,
                offset: Offset.fromDirection(-30, 6));
  }
