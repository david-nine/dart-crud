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

  int update(int id, Product product) {
    Product? existedProduct = this.findById(id);

    if (existedProduct == null) {
      return 0;
    } else {
      existedProduct.name = product.name;
      existedProduct.description = product.description;
      existedProduct.value = product.value;
      return 1;
    }
  }

  int delete(int id) {
    Product? product = findById(id);
    if (product == null) {
      return 0;
    } else {
      this._products.remove(product);
      return 1;
    }
  }
}
