import 'dart:io';

import '../../app/domain/contact/entity.dart';
import '../../usecase/list-contacts-usecase.dart';
import 'view.dart';

class ListContactView extends View {
  @override
  render(Map<String, dynamic> context) {
    print('#################################');
    print('L I S T A  D E   C O N T A T O S');
    print('#################################');
    print('');

    List<Contact> contacts = ContactListUseCase().execute({...context});

    for (Contact contact in contacts) {
      print(
          '${contact.id}, ${contact.name}, ${contact.email}, ${contact.phone}');
    }
  }
}
