import 'dart:io';
import '../../../usecase/common/object-not-found.dart';
import '../../../usecase/product/product-delete-usecase.dart';
import '../view.dart';

class ProductDeleteView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('##############################');
    print('D E L E T A R   P R O D U T O');
    print('##############################');
    print('');

    print('Digite o id do produto');
    String id = terminal.readLineSync() ?? "";

    try {
      ProductDeleteUsecase().execute({...context, 'id': id});
    } on ObjectNotFound {
      print('Produto informado não encontrado');
    }
  }
}
