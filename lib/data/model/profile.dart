import '../../domain/entity/profile_entity.dart';

class Profile extends ProfileEntity {
  late int id;
   final String Surname;
  final String name;
  final String middle_name;
  final DateTime date_birth;
  final String male ;
    final int id_users ;

  Profile(this.id, this.Surname, this.name, this.middle_name, 
    this.date_birth,
     this.male,
   this.id_users)
      : super(id, Surname, name, middle_name, date_birth, male, id_users);

  Map<String, dynamic> toMap() => {
        'id': id,
        'Surname': Surname,
        'name': name,
        'middle_name': middle_name,
        'date_birth': date_birth,
        'male': male,
        'id_users': id_users,
        
      };

  factory Profile.toFromMap(Map<String, dynamic> json) =>
      Profile(json['id'], json['Surname'], json['name'], json['middle_name'], json['date_birth'], json['male'], json['id_users']);
}
