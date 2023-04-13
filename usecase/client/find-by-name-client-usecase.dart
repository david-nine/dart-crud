import '../../app/domain/client/service.dart';

class ClientFindByNameUseCase {
  execute(Map<String, dynamic> context) {
    ClientService service = context['clientService'];
    String search = context['search'];
    return service.findByName(search);
  }
}
