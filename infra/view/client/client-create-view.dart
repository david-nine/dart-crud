import 'dart:io';
import '../../../usecase/client/client-create-usecase.dart';
import '../view.dart';
import 'client-view-utils.dart';

class CreateClientView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('#######################');
    print('N O V O   C L I E N T E');
    print('#######################');
    print('');

    Map<String, String> data = ClientViewUtils.inputClient(terminal);

    ClientCreateUseCase().execute({...context, 'data': data});
  }
}
