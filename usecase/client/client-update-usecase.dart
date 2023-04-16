import '../../app/domain/client/client-entity.dart';
import '../../app/domain/client/client-service.dart';
import '../common/object-not-found.dart';
import '../common/validation-exception.dart';
import 'client-usercase-utils.dart';

class ClientUpdateUsecase {
  execute(Map<String, dynamic> context) {
    ClientService service = context['clientService'];
    Map<String, String> data = context['data'];

    String id = data['id'] ?? "";

    if (id == "") {
      throw ValidationException(
          List.from({'O id é obrigatório para atualizar o cliente'}));
    } else {
      Client client = ClientUsecaseUtils.createClient(data);
      ClientUsecaseUtils.validate(client);
      int quantityUpdated = service.update(int.parse(id), client);
      if (quantityUpdated == 0) {
        throw ObjectNotFound();
      }
    }
  }
}
