// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

Future<bool> checkFileExistence(SessionStruct session) async {
  File file = File(await getFilePathHandler(session));

  print('file exists >> ${file.existsSync()}');
  return !file.existsSync();
}
