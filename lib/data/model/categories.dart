import '../../domain/entity/categories_entity.dart';

class Categories extends CategoriesEntity {
  late int id;
   final String categories;
  Categories(this.id, this.categories)
      : super(id, categories);

  Map<String, dynamic> toMap() => {
        'id': id,
        'categories': categories,
       
      };

  factory Categories.toFromMap(Map<String, dynamic> json) => Categories(json['id'],
      json['categories']);
}
