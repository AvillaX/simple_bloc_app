import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  Map<String, String> _sentences = {};

  Future<bool> load() async {
    String data =
        await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
    Map<String, dynamic> result = json.decode(data);

    _sentences = new Map();
    result.forEach((String key, dynamic value) {
      _sentences[key] = value.toString();
    });

    return true;
  }

  String trans(String key) {
    return _sentences[key] ?? '';
  }
}
