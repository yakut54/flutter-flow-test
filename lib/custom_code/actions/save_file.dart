// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

Future saveFile(
  SessionStruct session,
  Future Function() closeCb,
  Future Function(String percent, double progress) progressCb,
) async {
  print('Save File');
  String fileUrl;

  // URL файла для загрузки

  if (session.type == 'audio') {
    fileUrl = session.audioTrack;
  } else {
    fileUrl = session.videoTrack;
  }

  // Получаем директорию для сохранения файла
  Directory appDocDir = await getApplicationDocumentsDirectory();
  String filePath = '${appDocDir.path}/${await defineTrack(session)}';
  Timer? timer;

  try {
    // Создаем экземпляр Dio
    Dio dio = Dio();

    // Загружаем файл с отслеживанием прогресса
    await dio.download(
      fileUrl,
      filePath,
      onReceiveProgress: (received, total) {
        if (total != -1) {
          double progress = received / total * 100;

          // Если таймер еще не запущен, запускаем его
          if (timer == null || !timer!.isActive) {
            timer = Timer(const Duration(milliseconds: 100), () {
              print('a to!');
              progressCb('${progress.toStringAsFixed(0)}%', progress / 100);
            });
          }
        }
      },
    );

    // Очищаем таймер после завершения загрузки
    timer?.cancel();

    print('Файл сохранен по пути: $filePath');
    closeCb();
  } catch (e) {
    print('Ошибка при загрузке файла: $e');
  }
}
