import '../../app/domain/product/product-entity.dart';
import '../../app/domain/product/product-service.dart';
import '../common/validation-exception.dart';
import 'product-usercase-utils.dart';

class ProductCreateUseCase {
  execute(Map<String, dynamic> context) {
    Map<String, String> data = context['data'];

    Product product = ProductUsecaseUtils.createProduct(data);

    ProductUsecaseUtils.validate(product);
    ProductService service = context['productService'];
    service.insert(product);
  }
}
