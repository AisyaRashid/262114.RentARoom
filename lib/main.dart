import 'package:flutter/material.dart';
import 'package:rent_room/splashpage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData.dark(),
      title: 'RentARoom',
      home: const Scaffold(
        body: SplashPage(),
      ),
    );
  }
}


