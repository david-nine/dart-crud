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

  int update(int id, Client client) {
    Client? existedClient = this.findById(id);

    if (existedClient == null) {
      return 0;
    } else {
      existedClient.name = client.name;
      existedClient.cpf = client.cpf;
      existedClient.address = client.address;
      return 1;
    }
  }

  int delete(int id) {
    Client? client = findById(id);
    if (client == null) {
      return 0;
    } else {
      this._clients.remove(client);
      return 1;
    }
  }
}
