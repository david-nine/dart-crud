import 'dart:io';

import '../../../app/domain/client/client-entity.dart';
import '../../../usecase/client/list-clients-usecase.dart';
import '../view.dart';

class ListClientView extends View {
  render(Map<String, dynamic> context) {
    print('################################');
    print('L I S T A  D E   C L I E N T E S');
    print('################################');
    print('');

    List<Client> clients = ClientListUseCase().execute({...context});

    for (Client client in clients) {
      print(
          '${client.id}, ${client.name}, ${client.cpf}, Endereço: ${client.address?.number}, ${client.address?.publicPlace}, ${client.address?.complement}, ${client.address?.neighborhood}, ${client.address?.city}, ${client.address?.cep}'
        );
    }
  }
}
