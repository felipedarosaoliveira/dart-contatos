class Contact {
  int _id = 0;
  String _name = '';
  String _email = '';
  String _phone = '';

  Contact(
      {int id = 0, String name = '', String email = '', String phone = ''}) {
    this._id = id;
    this._name = name;
    this._email = email;
    this._phone = phone;
  }

  int get id => _id;

  String get name => _name;

  void set name(String name) {
    this._name = name;
  }

  String get email => _email;

  void set email(String email) {
    this._email = email;
  }

  String get phone => _phone;

  void set phone(String phone) {
    this._phone = phone;
  }
}
