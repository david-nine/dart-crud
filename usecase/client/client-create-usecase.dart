import '../../app/domain/client/client-entity.dart';
import '../../app/domain/client/client-service.dart';
import 'client-usercase-utils.dart';

class ClientCreateUseCase {
  execute(Map<String, dynamic> context) {
    ClientService service = context['clientService'];

    Client client = ClientUsecaseUtils.createClient(context['data']);
    ClientUsecaseUtils.validate(client);
    service.insert(client);
  }
}
