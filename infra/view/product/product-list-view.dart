import 'dart:io';

import '../../../app/domain/product/product-entity.dart';
import '../../../usecase/product/list-products-usecase.dart';
import '../view.dart';

class ListProductView extends View {
  @override
  render(Map<String, dynamic> context) {
    print('#################################');
    print('L I S T A  D E   P R O D U T O S');
    print('#################################');
    print('');

    List<Product> products = ProductListUseCase().execute({...context});

    for (Product product in products) {
      print(
          '${product.id}, ${product.name}, ${product.description}, ${product.value}');
    }
  }
}
