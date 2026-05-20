import 'dart:convert';

class User{
  String name;
  String email;

  User({required this.name, required this.email});


  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
    );
  }

  @override
  String toString() {
    return "User(name: $name, email: $email)";
  }
}

class UserRepository {
Future<List<User>> fetchUsers() async {
await Future.delayed(Duration(seconds: 1));
String jsonString = '''
    [
      {"name":"duc anh","email":"ducanh@gmail.com"},
      {"name":"nam","email":"nam@gmail.com"}
    ]
    ''';

List<dynamic> data = jsonDecode(jsonString);

return data.map((e) => User.fromJson(e)).toList();
}
}

Future<void> main() async {
  UserRepository repo = UserRepository();

  List<User> users = await repo.fetchUsers();

  print("Users:");
  for (var user in users) {
    print(user);
  }
}
