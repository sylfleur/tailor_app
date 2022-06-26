import 'package:tailor_app_manager/models/client.dart';

class ClientInit {
  final List<Client> _client = [
    Client(id: 1, nom: 'Doe', prenom: 'John', telephone: '0612345678', email: 'doe.john@azerty.com'),
    Client(id: 2, nom: 'Doe', prenom: 'Jane', telephone: '0612345678', email: 'doe.jane@azerty.com'),
    Client(id: 3, nom: 'Doe', prenom: 'Johan', telephone: '0612345678'),
    Client(id: 4, nom: 'Doe', prenom: 'Johanne', telephone: '0612345678'),
    Client(id: 5, nom: 'Doe', prenom: 'Johnathan', telephone: '0612345678'),
    Client(id: 6, nom: 'Doe', prenom: 'Johnnie', telephone: '0612345678'),
    Client(id: 7, nom: 'Doe', prenom: 'Johannie', telephone: '0612345678'),
  ];

  int getClientsLength() => _client.length;

  Client getClient(int index) => _client[index];
  List<Client> getAllClient() => _client;
  // List<Client> getSomeClients() => _client.sublist(0, 2);

  List<Client> getTwoLastClients() => [
        _client[getClientsLength() - 1],
        _client[getClientsLength() - 2],
      ];
}
