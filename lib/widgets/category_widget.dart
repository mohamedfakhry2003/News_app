import 'package:flutter/material.dart';
import 'package:news_app/models/category.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key, required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 200,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(category.image),
        ),
      ),
      child: Center(
        child: Text(
          category.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
