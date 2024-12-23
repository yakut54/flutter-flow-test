import '/components/app_header/app_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'description_page_widget.dart' show DescriptionPageWidget;
import 'package:flutter/material.dart';

class DescriptionPageModel extends FlutterFlowModel<DescriptionPageWidget> {
  ///  Local state fields for this page.

  bool isFileAvailable = false;

  ///  State fields for stateful widgets in this page.

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
