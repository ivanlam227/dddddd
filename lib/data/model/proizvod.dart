import '../../domain/entity/proizvod_entity.dart';

class Proizvod extends ProizvodEntity {
  late int id;
  final String proizvod;
  final int id_country;


  Proizvod(this.id, this.proizvod, this.id_country)
      : super(id, proizvod, id_country);

  Map<String, dynamic> toMap() => {
        'id': id,
        'proizvod': proizvod,
        'id_country': id_country,
       
      };

  factory Proizvod.toFromMap(Map<String, dynamic> json) => Proizvod(
      json['id'],
      json['proizvod'],
      json['id_country']);
    
}
