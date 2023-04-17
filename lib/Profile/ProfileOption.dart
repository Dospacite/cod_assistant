import 'package:hive/hive.dart';

class ProfileOption {
  String title;
  dynamic value;
  final Box box = Hive.box('profile');

  ProfileOption({required this.title});

  String getValue() {
    var value = box.get(title);
    return value ?? "";
  }

  void setValue(dynamic value) {
    box.put(title, value);
  }
}
