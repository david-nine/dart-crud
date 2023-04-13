import '../../app/domain/client/client-entity.dart';
import '../../app/domain/client/client-service.dart';
import '../../app/domain/address/address-entity.dart';

class ClientCreateUseCase {
  execute(Map<String, dynamic> context) {
    Map<String, String> data = context['data'];

    String name = data['name'] ?? "";
    String cpf = data['cpf'] ?? "";
    int number = int.parse(data['number'] ?? "0");
    String publicPlace = data['publicPlace'] ?? "";
    String neighborhood = data['neighborhood'] ?? "";
    String city = data['city'] ?? "";
    String cep = data['cep'] ?? "";
    String complement = data['complement'] ?? "";
    int id = DateTime.now().millisecondsSinceEpoch;



    ClientService service = context['clientService'];
    Address address = Address(
      number: number,
      publicPlace: publicPlace,
      neighborhood: neighborhood,
      city: city,
      cep: cep,
      complement: complement
    );
    service.insert(Client(id: id, name: name, cpf: cpf, address: address));
  }
}
