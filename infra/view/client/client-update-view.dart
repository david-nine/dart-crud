import 'dart:io';

import '../../../usecase/common/object-not-found.dart';
import '../../../usecase/common/validation-exception.dart';
import '../../../usecase/client/client-update-usecase.dart';
import '../view.dart';
import 'client-view-utils.dart';

class ClientUpdateView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('################################');
    print('A T U A L I Z A R  C L I E N T E');
    print('################################');
    print('');
    print('Digite o id do cliente que deseja atualizar');
    String id = terminal.readLineSync() ?? "";

    Map<String, String> clientData = ClientViewUtils.inputClient(terminal);
    clientData.putIfAbsent('id', () => id);

    try {
      ClientUpdateUsecase().execute({...context, 'data': clientData});
    } on ValidationException catch (e) {
      print('Erro ao atualizar Cliente');
      for (String error in e.errors) {
        print(error);
      }
    } on ObjectNotFound {
      print('Cliente informado não encontrado');
    }
  }
}
