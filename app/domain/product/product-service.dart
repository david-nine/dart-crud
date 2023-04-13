import 'package:collection/collection.dart';
import 'product-entity.dart';

class ProductService {
  List<Product> _products = [];

  void insert(Product product) {
    _products.add(product);
  }

  get findAll => _products;

  Product? findById(int id) {
    return _products.firstWhereOrNull((product) => product.id == id);
  }

  List<Product> findByName(String name) {
    return _products
        .where((product) =>
            product.name.toLowerCase().startsWith(name.toLowerCase()))
        .toList();
  }
}
