import '../../app/domain/product/product-entity.dart';
import '../../app/domain/product/product-service.dart';
import '../common/object-not-found.dart';
import '../common/validation-exception.dart';
import 'product-usercase-utils.dart';

class ProductUpdateUsecase {
  execute(Map<String, dynamic> context) {
    ProductService service = context['productService'];
    Map<String, String> data = context['data'];

    String id = data['id'] ?? "";

    if (id == "") {
      throw ValidationException(
          List.from({'O id é obrigatório para atualizar o produto'}));
    } else {
      Product product = ProductUsecaseUtils.createProduct(data);
      ProductUsecaseUtils.validate(product);
      int quantityUpdated = service.update(int.parse(id), product);
      if (quantityUpdated == 0) {
        throw ObjectNotFound();
      }
    }
  }
}
