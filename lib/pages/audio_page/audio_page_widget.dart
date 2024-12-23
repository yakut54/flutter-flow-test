import '/components/app_header/app_header_widget.dart';
import '/components/modal_widget/modal_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'audio_page_model.dart';
export 'audio_page_model.dart';

class AudioPageWidget extends StatefulWidget {
  const AudioPageWidget({super.key});

  @override
  State<AudioPageWidget> createState() => _AudioPageWidgetState();
}

class _AudioPageWidgetState extends State<AudioPageWidget> {
  late AudioPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AudioPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.isFileExist = await actions.checkFileExistence(
            FFAppState().Sessions.elementAtOrNull(FFAppState().idx)!,
          );
          FFAppState().isCurrentFileExist = _model.isFileExist!;
          safeSetState(() {});
        }),
        Future(() async {
          _model.fileNameWithExt = await actions.defineTrack(
            FFAppState().Sessions.elementAtOrNull(FFAppState().idx)!,
          );
          FFAppState().currentFileNameWithExt = _model.fileNameWithExt!;
          safeSetState(() {});
        }),
      ]);
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.appHeaderModel,
                  updateCallback: () => safeSetState(() {}),
                  child: AppHeaderWidget(
                    title: FFAppState()
                        .Sessions
                        .elementAtOrNull(FFAppState().idx)!
                        .title,
                    subtitle: FFAppState()
                        .Sessions
                        .elementAtOrNull(FFAppState().idx)!
                        .subtitle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 30.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.96,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.6,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF1F3FF),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 10.0, 20.0, 10.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          child: CachedNetworkImage(
                                            fadeInDuration:
                                                const Duration(milliseconds: 0),
                                            fadeOutDuration:
                                                const Duration(milliseconds: 0),
                                            imageUrl: valueOrDefault<String>(
                                              FFAppState()
                                                  .Sessions
                                                  .elementAtOrNull(
                                                      FFAppState().idx)
                                                  ?.sessionImg,
                                              'https://184526.selcdn.ru/mng/receive/images/__marta__.png',
                                            ),
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.4,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.sizeOf(context).width * 0.8,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(24.0),
                                    child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/uhi.png?alt=media&token=8c6e8c03-ae70-444f-863e-be5ff44ffac4',
                                      width: 50.0,
                                      height: 50.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'Принимайте сеанс в наушниках\nЭто ',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMediumFamily),
                                                ),
                                          ),
                                          TextSpan(
                                            text: 'ВАЖНО!',
                                            style: TextStyle(
                                              fontFamily: 'akrobatExtrabold',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .very,
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily),
                                            ),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 15.0, 10.0, 10.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: custom_widgets.AudioWidget(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 190.0,
                                    session: FFAppState()
                                        .Sessions
                                        .elementAtOrNull(FFAppState().idx)!,
                                  ),
                                ),
                              ),
                            ),
                            if (FFAppState().isCurrentFileExist)
                              Builder(
                                builder: (context) => Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: custom_widgets.GradientButon(
                                    width: 270.0,
                                    height: 60.0,
                                    title: 'CКАЧАТЬ ФАЙЛ',
                                    onTapGB: () async {
                                      showDialog(
                                        barrierColor:
                                            FlutterFlowTheme.of(context)
                                                .superLightGrey,
                                        barrierDismissible: false,
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: const AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(dialogContext)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.9,
                                                child: const ModalWidgetWidget(),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                          ],
                        ),
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
