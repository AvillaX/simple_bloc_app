import 'package:flutter/material.dart';
import 'package:simple_bloc_app/app_drawer.dart';

class PageModel extends StatelessWidget {
  PageModel({
    Key? key,
    required this.color,
    required this.description,
    required this.title,
  }) : super(key: key);

  Color color;
  String description, title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: AppDrawer(
        color: color,
      ),
      body: Container(
        color: color,
        child: Center(
          child: Text(description),
        ),
      ),
    );
  }
}
