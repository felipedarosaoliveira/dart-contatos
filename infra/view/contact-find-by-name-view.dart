import 'dart:io';

import '../../app/domain/contact/entity.dart';
import '../../usecase/find-by-name-contact-usecase.dart';
import 'view.dart';

class ContactFindByNameView extends View {
  @override
  render(Map<String, dynamic> context) {
    print('####################################');
    print('P E S Q U I S A R   C O N T A T O S');
    print('####################################');
    print('');

    Stdin terminal = context['terminal'];

    //perguntar qual é o nome que quer ser pesquisado
    print('Informe o nome do contato que você deseja');
    //ler o nome da pesquisa
    var search = terminal.readLineSync() ?? "";
    //passar a informação para o caso de uso

    List<Contact> contacts =
        ContactFindByNameUseCase().execute({...context, 'search': search});
    //apresentar a resposta do caso de uso
    if (contacts.isEmpty) {
      print("Não foram encontrados contatos com o nome informado");
    } else {
      for (Contact contact in contacts) {
        print(
            '${contact.id}, ${contact.name}, ${contact.email}, ${contact.phone}');
      }
    }
  }
}
