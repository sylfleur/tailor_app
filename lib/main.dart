import 'package:flutter/material.dart';
import 'package:flutter_true_false/screens/clients.dart';
import 'package:flutter_true_false/screens/homepage.dart';
import 'package:flutter_true_false/screens/settings.dart';

import 'screens/order.dart';

void main(List<String> args) {
  runApp(const DressingManager());
}

class DressingManager extends StatefulWidget {
  const DressingManager({Key? key}) : super(key: key);

  @override
  State<DressingManager> createState() => DressingManagerState();
}

class DressingManagerState extends State<DressingManager> {
  String appBarTitle = 'Home';
  Widget screen = Container();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manager',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(appBarTitle),
          ),
        ),
        body: bodyScreen(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTapBottomNav,
          // showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.quiz),
              label: 'Quizz',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Clients',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Settings',
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget bodyScreen() {
    return screen;
  }

  void onTapBottomNav(int value) {
      switch (value) {
        case 0:
          {
            appBarTitle = 'Home';
            setState(() {
              screen = const HomePage();
            });
          }
          break;
        case 1:
          {
            appBarTitle = 'Quizz';
            setState(() {
              screen = const Order();
            });
          }
          break;
        case 2:
          {
            appBarTitle = 'Clients';
            setState(() {
              screen = const Client();
            });
          }
          break;
        case 3:
          {
            appBarTitle = 'Settings';
            setState(() {
              screen = const Settings();
            });
          }
          break;
        default:
      }
  }
}
