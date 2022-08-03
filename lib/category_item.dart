import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  String title;
  Color color;

  // constructor
  CategoryItem(this.title, this.color) {
    this.title = title;
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(title, style: Theme.of(context).textTheme.subtitle1),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
