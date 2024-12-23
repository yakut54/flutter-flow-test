import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'modal_widget_model.dart';
export 'modal_widget_model.dart';

class ModalWidgetWidget extends StatefulWidget {
  const ModalWidgetWidget({super.key});

  @override
  State<ModalWidgetWidget> createState() => _ModalWidgetWidgetState();
}

class _ModalWidgetWidgetState extends State<ModalWidgetWidget> {
  late ModalWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalWidgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isShowInfoModal = FFAppState().isShowInfo;
      safeSetState(() {});
      if (!_model.isShowInfoModal) {
        await actions.saveFile(
          FFAppState().Sessions.elementAtOrNull(FFAppState().idx)!,
          () async {
            Navigator.pop(context);
            _model.isFileExistPryamo = await actions.checkFileExistence(
              FFAppState().Sessions.elementAtOrNull(FFAppState().idx)!,
            );
            FFAppState().isCurrentFileExist = _model.isFileExistPryamo!;
            FFAppState().update(() {});
          },
          (percent, progress) async {
            _model.loadingPercent = percent;
            _model.progress = progress;
            safeSetState(() {});
          },
        );
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Builder(
        builder: (context) {
          if (_model.isShowInfoModal && _model.isNotLoading) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 170),
              curve: Curves.easeInOut,
              width: MediaQuery.sizeOf(context).width * 0.96,
              height: 270.0,
              constraints: const BoxConstraints(
                maxWidth: 700.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).darkGrey,
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 10.0, 16.0, 10.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Вы можете скачать ',
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
                                  ),
                            ),
                            TextSpan(
                              text: FFAppState().currentFileNameWithExt,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'akrobatExtrabold',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('akrobatExtrabold'),
                                  ),
                            ),
                            const TextSpan(
                              text:
                                  '\nна устройство,  чтобы использовать приложение в оффлайн-режиме.',
                              style: TextStyle(),
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 18.0),
                      child: custom_widgets.GradientButon(
                        width: 270.0,
                        height: 60.0,
                        title: 'СКАЧАТЬ ФАЙЛ',
                        onTapGB: () async {
                          _model.isNotLoading = false;
                          safeSetState(() {});
                          await actions.saveFile(
                            FFAppState()
                                .Sessions
                                .elementAtOrNull(FFAppState().idx)!,
                            () async {
                              Navigator.pop(context);
                              _model.isFileExist =
                                  await actions.checkFileExistence(
                                FFAppState()
                                    .Sessions
                                    .elementAtOrNull(FFAppState().idx)!,
                              );
                              FFAppState().isCurrentFileExist =
                                  _model.isFileExist!;
                              FFAppState().update(() {});
                            },
                            (percent, progress) async {
                              _model.loadingPercent = percent;
                              _model.progress = progress;
                              safeSetState(() {});
                            },
                          );

                          safeSetState(() {});
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).accent1,
                            ),
                            child: Checkbox(
                              value: _model.checkboxValue ??=
                                  FFAppState().isShowInfo,
                              onChanged: (newValue) async {
                                safeSetState(
                                    () => _model.checkboxValue = newValue!);
                                if (newValue!) {
                                  FFAppState().isShowInfo = true;
                                  safeSetState(() {});
                                } else {
                                  FFAppState().isShowInfo = false;
                                  safeSetState(() {});
                                }
                              },
                              side: BorderSide(
                                width: 2,
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                              activeColor: FlutterFlowTheme.of(context).success,
                              checkColor: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Больше не показывать',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleMediumFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 190),
              curve: Curves.easeInOut,
              width: MediaQuery.sizeOf(context).width * 0.96,
              height: 270.0,
              constraints: const BoxConstraints(
                maxWidth: 700.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).darkGrey,
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 10.0, 16.0, 10.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Идёт скачивание файла ',
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
                                  ),
                            ),
                            TextSpan(
                              text: FFAppState().currentFileNameWithExt,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'akrobatExtrabold',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('akrobatExtrabold'),
                                  ),
                            ),
                            const TextSpan(
                              text:
                                  '\nНе выходите из приложения \nи не выключайте устройство',
                              style: TextStyle(),
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: CircularPercentIndicator(
                        percent: _model.progress,
                        radius: 50.0,
                        lineWidth: 20.0,
                        animation: true,
                        animateFromLastPercent: true,
                        progressColor:
                            FlutterFlowTheme.of(context).superLightGrey,
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                        center: Text(
                          _model.loadingPercent,
                          style: FlutterFlowTheme.of(context)
                              .displayMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .displayMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .displayMediumFamily),
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
