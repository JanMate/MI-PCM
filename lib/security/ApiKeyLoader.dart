
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:the_game/security/apiKey.dart';

class ApiKeyLoader {
  final String path;

  ApiKeyLoader({this.path});
  Future<ApiKey> load(String name) async {
    return rootBundle.loadStructuredData<ApiKey>(this.path,
            (jsonStr) async {
          final secret = ApiKey.fromJson(json.decode(jsonStr), name);
          return secret;
        });
  }
}