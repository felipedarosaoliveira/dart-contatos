import '../app/domain/contact/entity.dart';
import '../app/domain/contact/service.dart';

class ContactCreateUseCase {
  execute(Map<String, dynamic> context) {
    Map<String, String> data = context['data'];

    String name = data['name'] ?? "";
    String email = data['email'] ?? "";
    String phone = data['phone'] ?? "";
    int id = DateTime.now().millisecondsSinceEpoch;

    ContactService service = context['contactService'];
    service.insert(Contact(id: id, name: name, email: email, phone: phone));
  }
}
