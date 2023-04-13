import 'package:collection/collection.dart';
import 'client-entity.dart';

class ClientService {
  List<Client> _clients = [];

  void insert(Client client) {
    _clients.add(client);
  }

  get findAll => _clients;

  Client? findById(int id) {
    return _clients.firstWhereOrNull((client) => client.id == id);
  }

  List<Client> findByName(String name) {
    return _clients
        .where((client) =>
            client.name.toLowerCase().startsWith(name.toLowerCase()))
        .toList();
  }
}
