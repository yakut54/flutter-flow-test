import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'link_btn_widget_model.dart';
export 'link_btn_widget_model.dart';

class LinkBtnWidgetWidget extends StatefulWidget {
  /// LinkBtnWidget
  const LinkBtnWidgetWidget({super.key});

  @override
  State<LinkBtnWidgetWidget> createState() => _LinkBtnWidgetWidgetState();
}

class _LinkBtnWidgetWidgetState extends State<LinkBtnWidgetWidget> {
  late LinkBtnWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LinkBtnWidgetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, -1.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
            child: Material(
              color: Colors.transparent,
              elevation: 5.0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(6.0),
                  bottomRight: Radius.circular(6.0),
                  topLeft: Radius.circular(6.0),
                  topRight: Radius.circular(6.0),
                ),
              ),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.97,
                constraints: const BoxConstraints(
                  minHeight: 90.0,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFFF1F3FF),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        -1.0,
                        2.0,
                      ),
                      spreadRadius: 2.0,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(6.0),
                    bottomRight: Radius.circular(6.0),
                    topLeft: Radius.circular(6.0),
                    topRight: Radius.circular(6.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://api.selcdn.ru/v1/SEL_53369/mng/receive/images/img33.png',
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 55.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 60.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 70.0;
                            } else {
                              return 75.0;
                            }
                          }(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 5.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Хиты',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily),
                                        lineHeight: 1.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 3.0, 0.0, 5.0),
                                child: AutoSizeText(
                                  'Этого года',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'akrobatRegular',
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('akrobatRegular'),
                                        lineHeight: 1.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.97, -1.08),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 15.0, 5.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeInOut,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).very,
                    FlutterFlowTheme.of(context).very,
                    FlutterFlowTheme.of(context).error,
                    const Color(0x80FF5963),
                    FlutterFlowTheme.of(context).lightGrey
                  ],
                  stops: const [0.0, 0.2, 0.7, 0.83, 1.0],
                  begin: const AlignmentDirectional(0.0, -1.0),
                  end: const AlignmentDirectional(0, 1.0),
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 1.0, 8.0, 7.0),
                child: Text(
                  'Рекомендуется добавочно',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'akrobatSemibold',
                        color: Colors.white,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('akrobatSemibold'),
                      ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
