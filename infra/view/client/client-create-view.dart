import 'dart:io';
import '../../../usecase/client/create-client-usecase.dart';
import '../view.dart';

class CreateClientView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('########################');
    print('N O V O   P R O D U T O');
    print('########################');
    print('');

    print('Digite o nome do produto');
    String nome = terminal.readLineSync() ?? "";

    print('Digite a descrição do produto');
    String description = terminal.readLineSync() ?? "";

    print('Digite o valor do produto');
    String value = terminal.readLineSync() ?? "";

    Map<String, String> data = {
      'name': nome,
      'description': description,
      'value': value,
    };

    ClientCreateUseCase().execute({...context, 'data': data});
  }
}
