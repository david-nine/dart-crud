import '../../app/domain/product/product-service.dart';

class ProductFindByNameUseCase {
  execute(Map<String, dynamic> context) {
    ProductService service = context['productService'];
    String search = context['search'];
    return service.findByName(search);
  }
}
