import 'package:flutter/material.dart';
import 'package:second_app/trueorfalse.dart';
import 'package:second_app/widgets/SplashScreen.dart';
import 'package:second_app/widgets/hamdrawer.dart';
import 'package:second_app/widgets/leadprofile.dart';

import '/screens/aboutus_page/aboutus.dart';
import 'fillintheblanks.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'JS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
       home:  const Splash()
    );
  }
}


