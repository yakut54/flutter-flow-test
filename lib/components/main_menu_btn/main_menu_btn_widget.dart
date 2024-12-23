import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_menu_btn_model.dart';
export 'main_menu_btn_model.dart';

class MainMenuBtnWidget extends StatefulWidget {
  const MainMenuBtnWidget({
    super.key,
    required this.btn,
  });

  final SessionStruct? btn;

  @override
  State<MainMenuBtnWidget> createState() => _MainMenuBtnWidgetState();
}

class _MainMenuBtnWidgetState extends State<MainMenuBtnWidget> {
  late MainMenuBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainMenuBtnModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.btn = widget.btn;
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
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
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      _model.btn!.trackImg,
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
                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 5.0),
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
                              valueOrDefault<String>(
                                widget.btn?.title,
                                'title',
                              ),
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
                                    lineHeight: 1.1,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 3.0, 0.0, 5.0),
                            child: AutoSizeText(
                              valueOrDefault<String>(
                                widget.btn?.subtitle,
                                'subtitle',
                              ).maybeHandleOverflow(
                                maxChars: 1000,
                              ),
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
    );
  }
}
