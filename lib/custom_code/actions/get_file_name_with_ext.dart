// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

Future<String> getFileNameWithExt(String url) async {
  final regex = RegExp(r'\/([^\/]+)$');
  final match = regex.firstMatch(url);

  print('getFileNameWithExt');

  if (match != null) {
    return match.group(1)!;
  }

  return '';
}
