import 'dart:math';

import '../../domain/entity/catesubcate_entity.dart';

class CateSubcate extends CateSubcateEntity {
  late int id;
  final int id_subcategories;
  final int id_categories;

  CateSubcate(this.id, this.id_subcategories, this.id_categories)
      : super(id, id_subcategories, id_categories);

  Map<String, dynamic> toMap() => {
        'id': id,
        'id_subcategories': id_subcategories,
        'id_categories': id_categories,
       
      };

  factory CateSubcate.toFromMap(Map<String, dynamic> json) => CateSubcate(json['id'],
      json['id_subcategories'], json['id_categories']);
}
