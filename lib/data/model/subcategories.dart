import '../../domain/entity/subcategories_entity.dart';

class Subcategories extends SubcategoriesEntity {
  late int id;
  final String subcategories;

  Subcategories(this.id, this.subcategories)
      : super(id, subcategories);

  Map<String, dynamic> toMap() => {
        'id': id,
        'subcategories': subcategories,
       
      };

  factory Subcategories.toFromMap(Map<String, dynamic> json) => Subcategories(json['id'],
      json['subcategories']);
}
