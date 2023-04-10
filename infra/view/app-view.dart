import 'dart:io';

import 'contact-create-view.dart';
import 'contact-find-by-name-view.dart';
import 'contact-list-view.dart';
import 'view.dart';

class AppView extends View {
  @override
  render(Map<String, dynamic> context) {
    var option = -1;
    Stdin terminal = context['terminal'];
    while (option != 6) {
      menu();
      option = int.parse(terminal.readLineSync() ?? "0");
      executeOption(option, context);
    }
  }

  menu() {
    print('##########################');
    print('C O N T A T O    A P P');
    print('##########################');
    print('');
    print('1 - Listar Contatos');
    print('2 - Criar novo Contato');
    print('3 - Atualizar Contato');
    print('4 - Pesquisar contato');
    print('5 - Apagar Contato');
    print('6 - Sair');
  }

  executeOption(int option, context) {
    switch (option) {
      case 1:
        ListContactView().render(context);
        break;
      case 2:
        CreateContactView().render(context);
        break;
      case 3:
        break;
      case 4:
        ContactFindByNameView().render(context);
        break;
      case 5:
        break;
      case 6:
        break;
      default:
        print('Opção Inválida');
    }
  }
}
