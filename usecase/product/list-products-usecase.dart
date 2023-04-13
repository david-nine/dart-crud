import '../../app/domain/product/product-service.dart';

class ProductListUseCase {
  execute(Map<String, dynamic> context) {
    ProductService service = context['productService'];
    return service.findAll;
  }
}
