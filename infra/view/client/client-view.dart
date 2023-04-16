import 'dart:io';

import '../view.dart';
import 'client-create-view.dart';
import 'client-find-by-name-view.dart';
import 'client-list-view.dart';
import 'client-update-view.dart';

class ClientView extends View {
  @override
  render(Map<String, dynamic> context) {
    var option = -1;
    Stdin terminal = context['terminal'];
    while (option != 6) {
      menu();
      option = int.parse(terminal.readLineSync() ?? "0");
      executeOption(option, context);
    }
  }

  menu() {
    print('##########################################################');
    print('E S C O L H A  U M A  O P Ç Ã O  P A R A  O  C L I E N T E');
    print('##########################################################');
    print('');
    print('1 - Listar Clientes');
    print('2 - Criar novo Cliente');
    print('3 - Atualizar Cliente');
    print('4 - Pesquisar Cliente');
    print('5 - Apagar Cliente');
    print('6 - Voltar');
  }

  executeOption(int option, context) {
    switch (option) {
      case 1:
        ListClientView().render(context);
        break;
      case 2:
        CreateClientView().render(context);
        break;
      case 3:
        ClientUpdateView().render(context);
        break;
      case 4:
        ClientFindByNameView().render(context);
        break;
      case 5:
        break;
      case 6:
        break;
      default:
        print('Opção Inválida');
    }
  }
}
