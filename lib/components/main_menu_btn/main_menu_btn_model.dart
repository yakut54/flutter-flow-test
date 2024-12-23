import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_menu_btn_widget.dart' show MainMenuBtnWidget;
import 'package:flutter/material.dart';

class MainMenuBtnModel extends FlutterFlowModel<MainMenuBtnWidget> {
  ///  Local state fields for this component.

  SessionStruct? btn;
  void updateBtnStruct(Function(SessionStruct) updateFn) {
    updateFn(btn ??= SessionStruct());
  }

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
