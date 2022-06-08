// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:tailor_app_manager/widget/shared/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: const <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: const <Widget>[
            SearchWidget(),      
          ],
        ),
      ),
    );
  }
}
