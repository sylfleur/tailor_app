import 'package:flutter/material.dart';
import 'package:tailor_app_manager/models/client.dart';

class ShowClient extends StatefulWidget {
  const ShowClient({Key? key}) : super(key: key);

  @override
  State<ShowClient> createState() => _ShowClientState();
}

class _ShowClientState extends State<ShowClient> {
  List<Client> clients = [
    Client(
      id: 0,
      telephone: 'telephone',
      nom: 'nom',
      prenom: 'prenom',
    ),
    Client(
      id: 1,
      telephone: 'telephone',
      nom: 'nom1',
      prenom: 'prenom1',
    ),
    Client(
      id: 0,
      telephone: 'telephone',
      nom: 'nom2',
      prenom: 'prenom2',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: clients.length,
        itemBuilder: (context, int position) {
          return Card(
            color: Colors.teal,
            child: ListTile(leading: const CircleAvatar(),
              title: Text(clients[position].nom.toUpperCase() +' '+ clients[position].prenom),
              subtitle: Text(clients[position].telephone),
            ),
          );
        });
  }
}
