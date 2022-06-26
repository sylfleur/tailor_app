import 'package:flutter/material.dart';
import '../data_init/client_init.dart';

class ShowClient extends StatefulWidget {
  const ShowClient({Key? key}) : super(key: key);

  @override
  State<ShowClient> createState() => _ShowClientState();
}

class _ShowClientState extends State<ShowClient> {
  // List<Client> clients = [
  //   Client(
  //     id: 0,
  //     telephone: 'telephone',
  //     nom: 'nom',
  //     prenom: 'prenom',
  //   ),
  //   Client(
  //     id: 1,
  //     telephone: 'telephone',
  //     nom: 'nom1',
  //     prenom: 'prenom1',
  //   ),
  //   Client(
  //     id: 0,
  //     telephone: 'telephone',
  //     nom: 'nom2',
  //     prenom: 'prenom2',
  //   ),
  // ];

ClientInit clientInit = ClientInit();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: clientInit.getClientsLength(),
      itemBuilder: (context, int position) {
        return Card(
          color: Colors.teal,
          child: ListTile(
            leading: const CircleAvatar(),
            title: Text( clientInit.getAllClient()[position].nom.toUpperCase() + ' ' + clientInit.getAllClient()[position].prenom
             ),
            subtitle: Text(clientInit.getAllClient()[position].telephone),
          ),
        );
      },
    );
  }
}
