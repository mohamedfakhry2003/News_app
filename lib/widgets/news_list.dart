import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_widget.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.pics});
  final List pics;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: ListView.builder(
          itemCount: pics.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: NewsWidget(category: pics[index]),
            );
          }),
    );
  }
}
