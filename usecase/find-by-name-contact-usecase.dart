import '../app/domain/contact/service.dart';

class ContactFindByNameUseCase {
  execute(Map<String, dynamic> context) {
    ContactService service = context['contactService'];
    String search = context['search'];
    return service.findByName(search);
  }
}
