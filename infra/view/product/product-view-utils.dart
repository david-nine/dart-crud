import 'dart:io';

class ProductViewUtils {
  static Map<String, String> inputProduct(Stdin terminal) {
    print('Digite o nome do produto');
    String name = terminal.readLineSync() ?? "";

    print('Digite a descrição do produto');
    String description = terminal.readLineSync() ?? "";

    print('Digite o valor do produto');
    String value = terminal.readLineSync() ?? "";

    Map<String, String> data = {
      'name': name,
      'description': description,
      'value': value,
    };
    return data;
  }
}
