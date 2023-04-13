import 'dart:io';

import '../../../app/domain/client/client-entity.dart';
import '../../../usecase/client/find-by-name-client-usecase.dart';
import 'view.dart';

class ClientFindByNameView extends View {
  @override
  render(Map<String, dynamic> context) {
    print('####################################');
    print('P E S Q U I S A R   C L I E N T E S');
    print('####################################');
    print('');

    Stdin terminal = context['terminal'];

    print('Informe o nome do cliente que você deseja');
    var search = terminal.readLineSync() ?? "";

    List<Client> clients =
        ClientFindByNameUseCase().execute({...context, 'search': search});
    if (clients.isEmpty) {
      print("Não foram encontrados clientes com o nome informado");
    } else {
      for (Client client in clients) {
        print(
            '${client.id}, ${client.name}, ${client.email}, ${client.phone}');
      }
    }
  }
}
