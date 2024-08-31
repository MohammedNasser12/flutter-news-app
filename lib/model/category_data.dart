import 'package:flutter/material.dart';
import 'package:news_app/model/category_data.dart';
import 'package:news_app/model/category_data.dart';

import 'category_data.dart';

class CategoryData {
  final String categoryId;
  final String categoryName;
  final Color categoryColor;
  final String categoryImage;

  CategoryData(
      {required this.categoryId,
      required this.categoryName,
      required this.categoryColor,
      required this.categoryImage});
}
