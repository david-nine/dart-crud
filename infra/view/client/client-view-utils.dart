import 'dart:io';

class ClientViewUtils {
  static Map<String, String> inputClient(Stdin terminal) {
    print('Digite o nome do cliente');
    String name = terminal.readLineSync() ?? "";

    print('Digite o CPF do cliente');
    String cpf = terminal.readLineSync() ?? "";

    print('Informe o endereço do cliente');
    print('Digite o cep do cliente');
    String cep = terminal.readLineSync() ?? "";

    print('Digite a cidade do cliente');
    String city = terminal.readLineSync() ?? "";

    print('Digite o bairro do cliente');
    String neighborhood = terminal.readLineSync() ?? "";

    print('Digite o logradouro');
    String publicPlace = terminal.readLineSync() ?? "";

    print('Digite o complemento');
    String complement = terminal.readLineSync() ?? "";

    print('Digite o número da casa do cliente');
    String number = terminal.readLineSync() ?? "";

    Map<String, String> data = {
      'name': name,
      'cpf': cpf,
      'cep': cep,
      'city': city,
      'neighborhood': neighborhood,
      'publicPlace': publicPlace,
      'complement': complement,
      'number': number,
    };

    return data;
  }
}
