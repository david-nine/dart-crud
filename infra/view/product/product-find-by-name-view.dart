import 'dart:io';

import '../../../app/domain/product/product-entity.dart';
import '../../../usecase/product/find-by-name-product-usecase.dart';
import 'view.dart';

class ProductFindByNameView extends View {
  @override
  render(Map<String, dynamic> context) {
    print('####################################');
    print('P E S Q U I S A R   P R O D U T O S');
    print('####################################');
    print('');

    Stdin terminal = context['terminal'];

    print('Informe o nome do produto que você deseja');
    var search = terminal.readLineSync() ?? "";

    List<Product> products =
        ProductFindByNameUseCase().execute({...context, 'search': search});
    if (products.isEmpty) {
      print("Não foram encontrados produtos com o nome informado");
    } else {
      for (Product product in products) {
        print(
            '${product.id}, ${product.name}, ${product.email}, ${product.phone}');
      }
    }
  }
}
