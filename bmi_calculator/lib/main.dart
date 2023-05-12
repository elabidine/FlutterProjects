import 'package:bmi_calculator/modules/login/login.dart';
import 'package:bmi_calculator/modules/messenger/messenger_screen.dart';
import 'package:bmi_calculator/modules/users_screen/users_screen.dart';
import 'package:flutter/material.dart';

import 'modules/bmi/bmi_screen.dart';
import 'modules/login/login.dart';
import 'modules/messenger/messenger_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
