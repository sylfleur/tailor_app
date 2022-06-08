import 'package:flutter/material.dart';
import 'package:tailor_app_manager/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(context);
    return MaterialApp(
      title: 'Tailor Manager',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            // color: Colors.white,
            backgroundColor: Colors.white, elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black87),
          )),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
