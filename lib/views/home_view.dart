import 'package:flutter/material.dart';
import 'package:news_app/models/category.dart';
import 'package:news_app/widgets/categories_list.dart';
import 'package:news_app/widgets/news_list.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final List<Category> categories = [
    Category(title: "Business", image: "assets/business.avif"),
    Category(title: "Entertainment", image: "assets/entertaiment.avif"),
    Category(title: "Health", image: "assets/health.avif"),
    Category(title: "Science", image: "assets/science.avif"),
    Category(title: "Sports", image: "assets/sports.avif"),
    Category(title: "Technology", image: "assets/technology.jpeg"),
    Category(title: "General", image: "assets/general.avif"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "App",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CategoriesList(categories: categories),
          const SizedBox(height: 10),
          Expanded(child: NewsList(pics: categories))
        ],
      ),
    );
  }
}
