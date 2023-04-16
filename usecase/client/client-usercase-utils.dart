import '../../app/domain/address/address-entity.dart';
import '../../app/domain/client/client-entity.dart';
import '../common/validation-exception.dart';

class ClientUsecaseUtils {
  static Client createClient(Map<String, String> data) {
    String name = data['name'] ?? "";
    String cpf = data['cpf'] ?? "";
    int number = int.parse(data['number'] ?? "0");
    String publicPlace = data['publicPlace'] ?? "";
    String neighborhood = data['neighborhood'] ?? "";
    String city = data['city'] ?? "";
    String cep = data['cep'] ?? "";
    String complement = data['complement'] ?? "";
    int id = DateTime.now().millisecondsSinceEpoch;

    Address address = Address(
        number: number,
        publicPlace: publicPlace,
        neighborhood: neighborhood,
        city: city,
        cep: cep,
        complement: complement);

    return Client(id: id, name: name, cpf: cpf, address: address);
  }

  static void validate(Client client) {
    List<String> errors = [];

    if (client.name == '') {
      errors.add('O nome é obrigatório');
    } else if (client.name.length < 3) {
      errors.add('O nome deve ter pelo menos 3 caracteres');
    }

    if (client.name == '') {
      errors.add('O cpf é obrigatório');
    } else if (client.cpf.length != 11) {
      errors.add('O cpf deve ter 11 caracteres');
    }

    errors.addAll(validateAddress(client.address!));

    if (errors.isNotEmpty) {
      throw ValidationException(errors);
    }
  }

  static List<String> validateAddress(Address address) {
    List<String> errors = [];
    if (address.cep == "") {
      errors.add('O CEP é obrigatório');
    }
    if (address.city == "") {
      errors.add('A cidade é obrigatória');
    }
    if (address.complement == "") {
      errors.add('O complemento é obrigatório');
    }
    if (address.neighborhood == "") {
      errors.add('O bairro é obrigatório');
    }
    if (address.number == "") {
      errors.add('O número é obrigatório');
    }
    if (address.publicPlace == "") {
      errors.add('O logradouro é obrigatório');
    }
    return errors;
  }
}
