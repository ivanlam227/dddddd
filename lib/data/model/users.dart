import '../../domain/entity/users_entity.dart';

class Users extends UsersEntity {
    late int id;
  final String login;
  final String password;
  final int id_role;

  Users(this.id, this.login, this.password, this.id_role)
      : super(id, login, password, id_role);

  Map<String, dynamic> toMap() => {
        'id': id,
        'login': login,
        'password': password,
        'id_role': id_role,
       
      };

  factory Users.toFromMap(Map<String, dynamic> json) => Users(json['id'],
      json['login'], json['password'], json['id_role']);
}
