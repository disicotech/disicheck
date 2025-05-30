import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/index.dart';
import 'access_requests_page_widget.dart' show AccessRequestsPageWidget;
import 'package:flutter/material.dart';

class AccessRequestsPageModel
    extends FlutterFlowModel<AccessRequestsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DesktopSideBar component.
  late DesktopSideBarModel desktopSideBarModel;

  @override
  void initState(BuildContext context) {
    desktopSideBarModel = createModel(context, () => DesktopSideBarModel());
  }

  @override
  void dispose() {
    desktopSideBarModel.dispose();
  }
}
