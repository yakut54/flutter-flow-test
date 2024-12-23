import '/components/app_header/app_header_widget.dart';
import '/components/link_btn_widget/link_btn_widget_widget.dart';
import '/components/main_menu_btn/main_menu_btn_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'menu_page_model.dart';
export 'menu_page_model.dart';

class MenuPageWidget extends StatefulWidget {
  const MenuPageWidget({super.key});

  @override
  State<MenuPageWidget> createState() => _MenuPageWidgetState();
}

class _MenuPageWidgetState extends State<MenuPageWidget> {
  late MenuPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuPageModel());
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
        backgroundColor: FlutterFlowTheme.of(context).superLightGrey,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.appHeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    child: AppHeaderWidget(
                      title: FFAppState().PackWrapper.title,
                      subtitle: FFAppState().PackWrapper.subtitle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final sessionsList =
                            FFAppState().Sessions.map((e) => e).toList();

                        return Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: List.generate(sessionsList.length,
                              (sessionsListIndex) {
                            final sessionsListItem =
                                sessionsList[sessionsListIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('DescriptionPage');

                                FFAppState().idx = sessionsListIndex;
                                safeSetState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.mainMenuBtnModels.getModel(
                                  sessionsListIndex.toString(),
                                  sessionsListIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: MainMenuBtnWidget(
                                  key: Key(
                                    'Keyyk7_${sessionsListIndex.toString()}',
                                  ),
                                  btn: sessionsListItem,
                                ),
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await launchURL('https://marta-ng.com/hits/');
                        },
                        child: wrapWithModel(
                          model: _model.linkBtnWidgetModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const LinkBtnWidgetWidget(),
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
    );
  }
}
