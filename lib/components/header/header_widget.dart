import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String? title;
  final String? subtitle;

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: const AlignmentDirectional(-1.0, -1.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              shape: BoxShape.rectangle,
            ),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 1.0,
              child: Stack(
                alignment: const AlignmentDirectional(0.0, 0.0),
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: CachedNetworkImage(
                      fadeInDuration: const Duration(milliseconds: 0),
                      fadeOutDuration: const Duration(milliseconds: 0),
                      imageUrl: FFAppState().PackWrapper.backgroundImg,
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      constraints: const BoxConstraints(
                        maxWidth: 900.0,
                      ),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0x00FFFFFF),
                            Color(0xFFF1F3FF),
                            Color(0xFFF1F3FF)
                          ],
                          stops: [0.0, 0.4, 1.0],
                          begin: AlignmentDirectional(1.0, 0.0),
                          end: AlignmentDirectional(-1.0, 0),
                        ),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 16.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 20.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 0.0;
                                  } else {
                                    return 0.0;
                                  }
                                }(),
                                0.0,
                              ),
                              10.0,
                              0.0,
                              10.0),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/ramka.png?alt=media&token=83d78aa7-2313-4352-8cb3-b6529b467973',
                              width: 120.0,
                              fit: BoxFit.fill,
                              cacheWidth: 100,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        constraints: const BoxConstraints(
                          maxWidth: 900.0,
                        ),
                        decoration: const BoxDecoration(),
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              35.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Лучшее средство\nот паршивого настроения',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .displayMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .displayMediumFamily),
                                      lineHeight: 1.0,
                                    ),
                              ),
                              Text(
                                '25 миллионов лет назад на Земле появились неизвестные виды: ',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleMediumFamily,
                                      letterSpacing: 0.0,
                                      shadows: [
                                        const Shadow(
                                          color: Colors.white,
                                          offset: Offset(3.0, 1.0),
                                          blurRadius: 3.0,
                                        )
                                      ],
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily),
                                      lineHeight: 1.2,
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
      ],
    );
  }
}
