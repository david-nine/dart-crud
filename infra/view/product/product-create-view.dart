import 'dart:io';
import '../../../usecase/common/validation-exception.dart';
import '../../../usecase/product/create-product-usecase.dart';
import '../view.dart';
import 'product-view-utils.dart';

class CreateProductView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('##########################');
    print('N O V O   P R O D U T O');
    print('##########################');
    print('');

    Map<String, String> productData = ProductViewUtils.inputProduct(terminal);

    try {
      ProductCreateUseCase().execute({...context, 'data': productData});
    } on ValidationException catch (e) {
      print('Erro ao atualizar o Produto');
      for (String error in e.errors) {
        print(error);
      }
    }
  }
}
