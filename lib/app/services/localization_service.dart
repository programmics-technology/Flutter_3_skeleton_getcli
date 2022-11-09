import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Messages extends Translations {
  final Map<String, Map<String, String>> languages;
  Messages({required this.languages});

  @override
  Map<String, Map<String, String>> get keys {
    return languages;
  }

  static Future<Map<String, Map<String, String>>> func() async {
    Map<String, Map<String, String>> languages = {};
    String jsonStringValues =
        await rootBundle.loadString('assets/translation/en.json');
    Map<String, dynamic> mappedJson = jsonDecode(jsonStringValues);
    Map<String, String> json = {};
    mappedJson.forEach((key, value) {
      json[key] = value.toString();
    });
    languages['en_US'] = json;
    return languages;
  }
}
