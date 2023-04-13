import '../../app/domain/product/product-entity.dart';
import '../../app/domain/product/product-service.dart';

class ProductCreateUseCase {
  execute(Map<String, dynamic> context) {
    Map<String, String> data = context['data'];

    String name = data['name'] ?? "";
    String description = data['description'] ?? "";
    double value = 0.0;
    if (!(data['value'] ?? "0.0").isEmpty) {
      value = double.parse(data['value'] ?? "0.0");
    }
    int id = DateTime.now().millisecondsSinceEpoch;

    Product product = Product(id: id, name: name, value: value, description: description);

    if (this.validate(product)) {
      ProductService service = context['productService'];
      service.insert(product);
    };
  }

  bool validate(Product product) {
    List<String> errors = [];
    if (product.name == '') {
      errors.add('O nome é obrigatório');
    }
    else if (product.name.length < 3) {
      errors.add('O nome deve ter pelo menos 3 caracteres');
    }

    if (product.value <= 0.0) {
      errors.add('O valor deve ser maior do que 0');
    }
  
    bool isValid = errors.isEmpty;

    if (!isValid) {
      print('Produto não inserido');
      for (String error in errors) {
        print(error);
      }
      print('');
    }

    return isValid;
  }
}
