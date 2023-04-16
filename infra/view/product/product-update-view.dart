import 'dart:io';

import '../../../usecase/common/object-not-found.dart';
import '../../../usecase/common/validation-exception.dart';
import '../../../usecase/product/product-update-usecase.dart';
import '../view.dart';
import 'product-view-utils.dart';

class ProductUpdateView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('################################');
    print('A T U A L I Z A R  P R O D U T O');
    print('################################');
    print('');
    print('Digite o id do produto que deseja atualizar');
    String id = terminal.readLineSync() ?? "";

    Map<String, String> productData = ProductViewUtils.inputProduct(terminal);
    productData.putIfAbsent('id', () => id);

    try {
      ProductUpdateUsecase().execute({...context, 'data': productData});
    } on ValidationException catch (e) {
      print('Erro ao inserir Produto');
      for (String error in e.errors) {
        print(error);
      }
    } on ObjectNotFound {
      print('Produto informado não encontrado');
    }
  }
}
