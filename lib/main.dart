import 'package:flutter/material.dart';

import 'screens/clients_screen.dart';
import 'widget/shared/bottom_bar.dart';

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
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none),
            ),
          ],
        ),
        body: const ShowClient(),
              bottomNavigationBar: const BottomNavWidget(),
      ),
      // ,
      debugShowCheckedModeBanner: false,
    );
  }
}
