import 'dart:io';

import 'product-create-view.dart';
import 'product-delete-view.dart';
import 'product-find-by-name-view.dart';
import 'product-list-view.dart';
import '../view.dart';
import 'product-update-view.dart';

class ProductView extends View {
  @override
  render(Map<String, dynamic> context) {
    var option = -1;
    Stdin terminal = context['terminal'];
    while (option != 6) {
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
    print('##########################################################');
    print('E S C O L H A  U M A  O P Ç Ã O  P A R A  O  P R O D U T O');
    print('##########################################################');
    print('');
    print('1 - Listar Produtos');
    print('2 - Criar novo Produto');
    print('3 - Atualizar Produto');
    print('4 - Pesquisar produto');
    print('5 - Apagar Produto');
    print('6 - Voltar');
  }

  executeOption(int option, context) {
    switch (option) {
      case 1:
        ListProductView().render(context);
        break;
      case 2:
        CreateProductView().render(context);
        break;
      case 3:
        ProductUpdateView().render(context);
        break;
      case 4:
        ProductFindByNameView().render(context);
        break;
      case 5:
        ProductDeleteView().render(context);
        break;
      case 6:
        break;
      default:
        print('Opção Inválida');
    }
  }
}
