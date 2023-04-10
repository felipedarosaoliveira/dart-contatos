import '../app/domain/contact/service.dart';

class ContactListUseCase {
  execute(Map<String, dynamic> context) {
    ContactService service = context['contactService'];
    return service.findAll;
  }
}
