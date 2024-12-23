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
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class HtmlToFlutter2Widget extends StatefulWidget {
  const HtmlToFlutter2Widget({
    super.key,
    this.width,
    this.height,
    required this.text,
  });

  final double? width;
  final double? height;
  final String text;

  @override
  State<HtmlToFlutter2Widget> createState() => _HtmlToFlutter2WidgetState();
}

class _HtmlToFlutter2WidgetState extends State<HtmlToFlutter2Widget> {
  @override
  Widget build(BuildContext context) {
    FlutterFlowTheme FFTheme = FlutterFlowTheme.of(context);

    TextStyle fontStyle = FFTheme.titleMedium.override(
      fontFamily: FFTheme.titleMediumFamily,
      letterSpacing: 0.0,
      lineHeight: 1.3,
      useGoogleFonts:
          GoogleFonts.asMap().containsKey(FFTheme.titleMediumFamily),
    );

    return Container(
      child: HtmlWidget(
        widget.text,
        renderMode: RenderMode.column,
        customStylesBuilder: (element) {
          if (element.classes.contains('foo')) {
            return {
              'list-style-type': 'decimal',
              'padding-left': '25px',
            };
          }

          if (element.localName == 'li') {
            return {
              'padding-bottom': '6px',
            };
          }

          if (element.localName == 'ul') {
            return {
              'padding-bottom': '0px',
            };
          }

          return null;
        },
        textStyle: fontStyle,
      ),
    );
  }
}
