class PhoneNumber {
  String number;
  String label;

  String toString() {
    return '<number: $number, label: $label>';
  }
}

class AddressBook {
  String name;
  String email;
  String phone;

  String toString() {
    return '<name: $name, email: $email, phone: $phone>';
  }
}

main() {
  final addressBookStr = (new AddressBook()
    ..name = 'jenny'
    ..email = 'jenny@example.com'
    ..phone = (new PhoneNumber()
      ..number = '415-555-0100'
      ..label = 'home')
        .toString())
      .toString();
  print(addressBookStr);

  var phoneNumber = new PhoneNumber();
  phoneNumber.number = '433-555-0101';
  phoneNumber.label = 'office';
  var addressBook = new AddressBook();
  addressBook.name = 'jenny';
  addressBook.email = 'jenny@example.com';
  addressBook.phone = phoneNumber.toString();
  var addressBookStr2 = addressBook.toString();
  print(addressBookStr2);
}

// https://www.dartlang.org/guides/language/language-tour#cascade-notation
