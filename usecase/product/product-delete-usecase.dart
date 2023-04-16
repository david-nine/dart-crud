import '../../app/domain/product/product-service.dart';
import '../common/object-not-found.dart';

class ProductDeleteUsecase {
  execute(Map<String, dynamic> context) {
    ProductService service = context['productService'];

    String id = context['id'] ?? "";

    if (id == "") {
      print('O id é obrigatório');
    } else {
      int quantityDeleted = service.delete(int.parse(id));
      if (quantityDeleted == 0) {
        throw ObjectNotFound();
      }
    }
  }
}
