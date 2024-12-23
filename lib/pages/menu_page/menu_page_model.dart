import '/components/app_header/app_header_widget.dart';
import '/components/link_btn_widget/link_btn_widget_widget.dart';
import '/components/main_menu_btn/main_menu_btn_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'menu_page_widget.dart' show MenuPageWidget;
import 'package:flutter/material.dart';

class MenuPageModel extends FlutterFlowModel<MenuPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppHeader component.
  late AppHeaderModel appHeaderModel;
  // Models for MainMenuBtn dynamic component.
  late FlutterFlowDynamicModels<MainMenuBtnModel> mainMenuBtnModels;
  // Model for LinkBtnWidget component.
  late LinkBtnWidgetModel linkBtnWidgetModel;

  @override
  void initState(BuildContext context) {
    appHeaderModel = createModel(context, () => AppHeaderModel());
    mainMenuBtnModels = FlutterFlowDynamicModels(() => MainMenuBtnModel());
    linkBtnWidgetModel = createModel(context, () => LinkBtnWidgetModel());
  }

  @override
  void dispose() {
    appHeaderModel.dispose();
    mainMenuBtnModels.dispose();
    linkBtnWidgetModel.dispose();
  }
}
