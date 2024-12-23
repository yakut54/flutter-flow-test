import '/components/app_header/app_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'video_page_widget.dart' show VideoPageWidget;
import 'package:flutter/material.dart';

class VideoPageModel extends FlutterFlowModel<VideoPageWidget> {
  ///  Local state fields for this page.

  String fileName = 'fileName fileName';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - checkFileExistence] action in VideoPage widget.
  bool? isFileExist;
  // Stores action output result for [Custom Action - defineTrack] action in VideoPage widget.
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
