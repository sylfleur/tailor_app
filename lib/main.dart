import 'package:flutter/material.dart';
import 'package:tailor_app_manager/screens/home_screen.dart';
import 'widget/shared/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final ValueNotifier<Widget> bodyView =
      ValueNotifier<Widget>(const DashBoard());

  @override
  Widget build(BuildContext context) {
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
        body: ValueListenableBuilder(
            valueListenable: bodyView,
            builder: (BuildContext context, Widget value, Widget? child) {
              return bodyView.value;
            }),
        bottomNavigationBar: const BottomNavWidget(),
      ),
      // ,
      debugShowCheckedModeBanner: false,
    );
  }
}
