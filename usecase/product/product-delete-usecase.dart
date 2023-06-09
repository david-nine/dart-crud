import '../../app/domain/product/product-service.dart';
import '../common/object-not-found.dart';
import '../common/validation-exception.dart';

class ProductDeleteUsecase {
  execute(Map<String, dynamic> context) {
    ProductService service = context['productService'];

    String id = context['id'] ?? "";

    if (id == "") {
      throw ValidationException(List.from({'O id é obrigatório'}));
    } else {
      int quantityDeleted = service.delete(int.parse(id));
      if (quantityDeleted == 0) {
        throw ObjectNotFound();
      }
    }
  }
}
