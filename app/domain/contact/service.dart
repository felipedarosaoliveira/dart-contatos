import 'package:collection/collection.dart';
import 'entity.dart';

class ContactService {
  List<Contact> _contacts = [
    Contact(id: 1, name: 'João', email: 'joao@test.com', phone: '33221100'),
    Contact(id: 2, name: 'Maria', email: 'maria@test.com', phone: '33221111'),
  ];

  void insert(Contact contact) {
    _contacts.add(contact);
  }

  get findAll => _contacts;

  Contact? findById(int id) {
    return _contacts.firstWhereOrNull((contact) => contact.id == id);
  }

  List<Contact> findByName(String name) {
    return _contacts
        .where((contact) =>
            contact.name.toLowerCase().startsWith(name.toLowerCase()))
        .toList();
  }
}

void main() {
  var service = ContactService();

  print(service._contacts.length);

  service.insert(Contact(id: 1, name: 'João'));

  print(service._contacts.length);

  print(service.findAll);

  print(service.findById(2));

  var contacts = service.findByName("maria");
  print(contacts);
}
