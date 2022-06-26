// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:tailor_app_manager/widget/shared/search.dart';

import '../data_init/client_init.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  ClientInit clientInit = ClientInit();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Latest Activities',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.download,
                ),
              ),
            ],
          ),
          LastestActivitesWidget(clientInit: clientInit, x: 0, ),
          LastestActivitesWidget(clientInit: clientInit, x: 1),
          ],
      ),
    );
  }
}

class LastestActivitesWidget extends StatelessWidget {
  const LastestActivitesWidget({
    Key? key,
    required this.clientInit, required this.x,
  }) : super(key: key);

  final ClientInit clientInit;
  final int x;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal,
      child: ListTile(
        leading: const CircleAvatar(),
        title: Text(clientInit.getTwoLastClients()[x].nom.toUpperCase() +
            ' ' +
            clientInit.getAllClient()[x].prenom),
        subtitle: Text(clientInit.getTwoLastClients()[x].telephone),
      ),
    );
  }
}
