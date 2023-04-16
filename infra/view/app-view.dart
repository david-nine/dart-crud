import 'dart:io';

import 'product/product-view.dart';
import 'client/client-view.dart';
import 'view.dart';

class AppView extends View {
  @override
  render(Map<String, dynamic> context) {
    var option = -1;
    Stdin terminal = context['terminal'];
    while (option != 3) {
      menu();
      try {
        option = int.parse(terminal.readLineSync() ?? "0");
        executeOption(option, context);
      } on FormatException {
        print('Opção inválida');
      }
    }
  }

  menu() {
    print('###############################');
    print('E S C O L H A  U M A  O P Ç Ã O');
    print('###############################');
    print('');
    print('1 - Gerenciar Produtos');
    print('2 - Gerenciar Clientes');
    print('3 - Sair');
  }

  executeOption(int option, context) {
    switch (option) {
      case 1:
        ProductView().render(context);
        break;
      case 2:
        ClientView().render(context);
        break;
      case 3:
        break;
      default:
        print('Opção Inválida');
    }
  }
}
