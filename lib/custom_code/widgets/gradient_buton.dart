// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_fonts/google_fonts.dart';

class GradientButon extends StatefulWidget {
  const GradientButon({
    super.key,
    this.width,
    this.height,
    required this.title,
    required this.onTapGB,
  });

  final double? width;
  final double? height;
  final String title;
  final Future Function() onTapGB;

  @override
  State<GradientButon> createState() => _GradientButonState();
}

class _GradientButonState extends State<GradientButon> {
  @override
  Widget build(BuildContext context) {
    FlutterFlowTheme FFTheme = FlutterFlowTheme.of(context);

    TextStyle fontStyle = FFTheme.headlineMedium.override(
      fontFamily: FFTheme.headlineMediumFamily,
      letterSpacing: 1.0,
      lineHeight: 1.2,
      useGoogleFonts:
          GoogleFonts.asMap().containsKey(FFTheme.headlineMediumFamily),
    );

    return GestureDetector(
      onTap: () async {
        // Выводим сообщение в консоль
        print('Я Кнопко! ${FFTheme.headlineMediumFamily}');
        // Вызываем функцию onTapGB
        await widget.onTapGB();
      },
      child: PhysicalModel(
        color: Colors.transparent, // Цвет фона, чтобы тень была видна
        elevation: 5, // Устанавливаем elevation для тени
        borderRadius: BorderRadius.circular(8.0), // Закругление углов
        child: Container(
          width: widget.width,
          padding: const EdgeInsets.fromLTRB(25, 12, 25, 12),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFFF8700), // Первый цвет градиента
                Color(0xFFF8C740), // Второй цвет градиента
                Color(0xFFFF8700), // Третий цвет градиента
              ],
              stops: [0.0, 0.56, 1.0], // Позиции цветов
            ),
            borderRadius: BorderRadius.circular(8.0), // Закругление углов
          ),
          alignment: Alignment.center,
          child: Text(
            widget.title,
            style: fontStyle,
          ),
        ),
      ),
    );
  }
}
