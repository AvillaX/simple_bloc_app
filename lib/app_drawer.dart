import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({Key? key, required this.color}) : super(key: key);

  Color color;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: color),
            child: Column(),
          )
        ],
      ),
    );
  }
}
