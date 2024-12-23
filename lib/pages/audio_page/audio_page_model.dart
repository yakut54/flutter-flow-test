import '/components/app_header/app_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'audio_page_widget.dart' show AudioPageWidget;
import 'package:flutter/material.dart';

class AudioPageModel extends FlutterFlowModel<AudioPageWidget> {
  ///  Local state fields for this page.

  String fileName = 'test-potomu-chto.zbs';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - checkFileExistence] action in AudioPage widget.
  bool? isFileExist;
  // Stores action output result for [Custom Action - defineTrack] action in AudioPage widget.
  String? fileNameWithExt;
  // Model for AppHeader component.
  late AppHeaderModel appHeaderModel;

  @override
  void initState(BuildContext context) {
    appHeaderModel = createModel(context, () => AppHeaderModel());
  }

  @override
  void dispose() {
    appHeaderModel.dispose();
  }
}
