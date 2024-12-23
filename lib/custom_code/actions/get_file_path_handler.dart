// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:path_provider/path_provider.dart';
import 'dart:io';

Future<String> getFilePathHandler(SessionStruct session) async {
  String fileNameFromUrl = await defineTrack(session);
  String filePath = await getFilePath(fileNameFromUrl);
  return filePath;
}

Future<String> getFilePath(String trackUrl) async {
  Directory appDocDir = await getApplicationDocumentsDirectory();
  return '${appDocDir.path}/$trackUrl';
}
