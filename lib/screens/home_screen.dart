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
          children: <Widget>[
            SearchWidget(),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.money,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.timer,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.mark_chat_unread_sharp,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.drafts,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Create new Invoice',
                    style: TextStyle(),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                    onPressed: null,
                    child: Text(
                      'Start Now',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: '-',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.quiz,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.person_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
    );
  }
}
