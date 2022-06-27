import 'package:flutter/material.dart';

import '../../data_init/client_init.dart';

class LastestActivitesWidget extends StatelessWidget {
  const LastestActivitesWidget({
    Key? key,
    required this.clientInit,
    required this.x,
    // required this.functionCalled
  }) : super(key: key);

  final ClientInit clientInit;
  final int x;
  // final Function functionCalled;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
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
