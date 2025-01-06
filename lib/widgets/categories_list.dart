import 'package:flutter/material.dart';
import 'package:news_app/models/category.dart';
import 'package:news_app/widgets/category_widget.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
    required this.categories,
  });

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryWidget(
              category: categories[index],
            );
          }),
    );
  }
}
