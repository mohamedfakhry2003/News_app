import 'package:flutter/material.dart';
import 'package:news_app/models/category.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          category.image,
          fit: BoxFit.fill,
        ),
        const SizedBox(height: 10),
        Text(category.title,style: const TextStyle(fontWeight: FontWeight.bold),),
        const SizedBox(height: 5),
        const Text("news details",style: TextStyle(color: Colors.grey),),
      ],
    );
  }
}
