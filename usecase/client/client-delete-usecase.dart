import '../../app/domain/client/client-service.dart';
import '../common/object-not-found.dart';
import '../common/validation-exception.dart';

class ClientDeleteUsecase {
  execute(Map<String, dynamic> context) {
    ClientService service = context['clientService'];

    String id = context['id'] ?? "";

    if (id == "") {
      throw ValidationException(List.from({'O id é obrigatório'}));
    } else {
      int quantityDeleted = service.delete(int.parse(id));
      if (quantityDeleted == 0) {
        throw ObjectNotFound();
      }
    }
  }
}
