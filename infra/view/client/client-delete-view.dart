import 'dart:io';

import '../../../usecase/client/client-delete-usecase.dart';
import '../../../usecase/common/object-not-found.dart';
import '../view.dart';

class ClientDeleteView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('#############################');
    print('D E L E T A R   C L I E N T E');
    print('#############################');
    print('');

    print('Digite o id do cliente');
    String id = terminal.readLineSync() ?? "";

    try {
      ClientDeleteUsecase().execute({...context, 'id': id});
    } on ObjectNotFound {
      print('Cliente informado não encontrado');
    }
  }
}
