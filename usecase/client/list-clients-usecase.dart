import '../../app/domain/client/client-service.dart';

class ClientListUseCase {
  execute(Map<String, dynamic> context) {
    ClientService service = context['clientService'];
    return service.findAll;
  }
}
