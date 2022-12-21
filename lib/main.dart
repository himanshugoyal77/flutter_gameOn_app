import 'package:flutter/material.dart';
import 'package:game_on/constants.dart';
import 'package:game_on/modals/login_modal.dart';
import 'package:game_on/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Game On',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: kPrimaryColor,
        ),
        home: const LoginScreen(display: LoginModal()));
  }
}
