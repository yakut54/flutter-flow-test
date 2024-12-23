import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'app_header_model.dart';
export 'app_header_model.dart';

class AppHeaderWidget extends StatefulWidget {
  /// vashenko-31@mail.ru
  const AppHeaderWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String? title;
  final String? subtitle;

  @override
  State<AppHeaderWidget> createState() => _AppHeaderWidgetState();
}

class _AppHeaderWidgetState extends State<AppHeaderWidget> {
  late AppHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppHeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Image.network(
            valueOrDefault<String>(
              FFAppState().PackWrapper.backgroundImg,
              'https://gdlsjuakwxzbcicyewvh.supabase.co/storage/v1/object/sign/pack/fon01.jpg?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJwYWNrL2ZvbjAxLmpwZyIsImlhdCI6MTczMjYwNDAwMCwiZXhwIjozMzI2ODYwNDAwMH0.gKCgD8kLQyNidjYWWoqq3beB55OedkAuylhuWWCY3Hg&t=2024-11-26T06%3A53%3A19.703Z',
            ),
          ).image,
        ),
      ),
      child: Align(
        alignment: const AlignmentDirectional(-1.0, 0.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
              valueOrDefault<double>(
                () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 16.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return 16.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 16.0;
                  } else {
                    return 0.0;
                  }
                }(),
                0.0,
              ),
              8.0,
              10.0,
              8.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            constraints: const BoxConstraints(
              minHeight: 160.0,
              maxWidth: 900.0,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                alignment: AlignmentDirectional(-1.0, 0.0),
                image: CachedNetworkImageProvider(
                  'https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/ramka.png?alt=media&token=83d78aa7-2313-4352-8cb3-b6529b467973',
                ),
              ),
            ),
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 26.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: AnimatedDefaultTextStyle(
                      style: FlutterFlowTheme.of(context)
                          .displayMedium
                          .override(
                            fontFamily: 'akrobatBold',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('akrobatBold'),
                            lineHeight: 1.1,
                          ),
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.easeIn,
                      child: Text(
                        valueOrDefault<String>(
                          widget.title,
                          'Lorem ipsum dolor sit',
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  if (widget.subtitle != null && widget.subtitle != '')
                    Text(
                      valueOrDefault<String>(
                        widget.subtitle,
                        ' huj',
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                                lineHeight: 1.1,
                              ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
