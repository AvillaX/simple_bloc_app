import 'package:flutter/material.dart';
import 'package:simple_bloc_app/app_drawer.dart';

import '../language/app_localizations.dart';

class PageModel extends StatelessWidget {
  PageModel({
    Key? key,
    required this.color,
    required this.description,
    required this.title,
  }) : super(key: key);

  Color color;
  String description, title;

  String _title = '';
  String _description = '';

  @override
  Widget build(BuildContext context) {
    _title = AppLocalizations.of(context)?.trans(title) ?? title;
    _description =
        AppLocalizations.of(context)?.trans(description) ?? description;
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      drawer: AppDrawer(
        title: _title,
        color: color,
      ),
      body: Container(
        color: color,
        child: Center(
          child: Text(
            _description,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
