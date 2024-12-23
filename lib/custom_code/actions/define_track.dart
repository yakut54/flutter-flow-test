// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

Future<String> defineTrack(SessionStruct session) async {
  String fileNameFromUrl;

  if (session.type == 'audio') {
    fileNameFromUrl = await getFileNameWithExt(session.audioTrack);
  } else {
    fileNameFromUrl = await getFileNameWithExt(session.videoTrack);
  }

  print('session.type >>>>>>>>> ${session.type}');
  print('fileNameFromUrl >>>>>>>>> ${fileNameFromUrl}');
  return fileNameFromUrl;
}
