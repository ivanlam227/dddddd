import '../../domain/entity/country_entity.dart';

class Country extends CountryEntity {
 late int id;
    final String country;


  Country(
      this.id, this.country)
      : super(id, country);

  Map<String, dynamic> toMap() => {
        'id': id,
        'country': country,
     
      };

  factory Country.toFromMap(Map<String, dynamic> json) => Country(
      json['id'],
      json['country'],
     );
}
