import '../../app/domain/product/product-entity.dart';
import '../common/validation-exception.dart';

class ProductUsecaseUtils {
  static Product createProduct(Map<String, String> data) {
    String name = data['name'] ?? "";
    String description = data['description'] ?? "";
    double value = 0.0;
    if (!(data['value'] ?? "0.0").isEmpty) {
      value = double.parse(data['value'] ?? "0.0");
    }
    int id = DateTime.now().millisecondsSinceEpoch;

    return Product(id: id, name: name, value: value, description: description);
  }

  static void validate(Product product) {
    List<String> errors = [];
    if (product.name == '') {
      errors.add('O nome é obrigatório');
    } else if (product.name.length < 3) {
      errors.add('O nome deve ter pelo menos 3 caracteres');
    }

    if (product.value <= 0.0) {
      errors.add('O valor deve ser maior do que 0');
    }

    if (errors.isNotEmpty) {
      throw ValidationException(errors);
    }
  }
}
