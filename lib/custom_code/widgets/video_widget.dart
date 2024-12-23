// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'index.dart'; // Импорт других пользовательских виджетов
import '/custom_code/actions/index.dart'; // Импорт пользовательских действий
import 'package:test_fb/flutter_flow/flutter_flow_video_player.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({
    super.key,
    this.width,
    this.height,
    required this.session,
  });

  final double? width;
  final double? height;
  final SessionStruct session;

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late bool isFileNotExist;
  FlutterFlowVideoPlayer? video; // Измените на nullable

  Future<void> definePath() async {
    isFileNotExist = await checkFileExistence(widget.session);

    // Получаем директорию для сохранения файла
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String filePath = '${appDocDir.path}/${await defineTrack(widget.session)}';

    // Инициализация video
    if (!isFileNotExist) {
      // Проверяем, существует ли файл
      if (await File(filePath).exists()) {
        print('VIDEO FROM FILE SYSTEM >>> ${filePath}');

        video = FlutterFlowVideoPlayer(
          path: filePath,
          videoType: VideoType.network,
          width: MediaQuery.sizeOf(context).width * 0.9,
          autoPlay: false,
          looping: true,
          showControls: true,
          allowFullScreen: true,
          allowPlaybackSpeedMenu: false,
        );
      }
    } else {
      print('VIDEO FROM NETWORK');

      video = FlutterFlowVideoPlayer(
        path:
            FFAppState().Sessions.elementAtOrNull(FFAppState().idx)!.videoTrack,
        videoType: VideoType.network,
        width: MediaQuery.sizeOf(context).width * 0.9,
        autoPlay: false,
        looping: true,
        showControls: true,
        allowFullScreen: true,
        allowPlaybackSpeedMenu: false,
      );
    }

    // Обновляем состояние после инициализации
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    definePath();
  }

  @override
  Widget build(BuildContext context) {
    // Проверяем, инициализирован ли video
    if (video == null) {
      return Center(
          child: CircularProgressIndicator()); // Показываем индикатор загрузки
    }

    return Container(
      child: video,
    );
  }
}
