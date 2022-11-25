import '../../domain/entity/role_entity.dart';

class Role extends RoleEntity {
  late int id;
  final String role;
 

  Role (this.id, this.role)
      : super(id, role);

  Map<String, dynamic> toMap() => {
        'id': id,
        'role': role,
       
      };

  factory Role.toFromMap(Map<String, dynamic> json) =>
      Role(json['id'], json['role']);
}
