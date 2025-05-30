import '/backend/api_requests/api_calls.dart';
import '/components/commons/principal_action_button_orange/principal_action_button_orange_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import 'reports_page_widget.dart' show ReportsPageWidget;
import 'package:flutter/material.dart';

class ReportsPageModel extends FlutterFlowModel<ReportsPageWidget> {
  ///  Local state fields for this page.

  dynamic reportData;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GENERATE REPORT FROM DB)] action in ReportsPage widget.
  ApiCallResponse? generateReportOnApp;
  // Model for DesktopSideBar component.
  late DesktopSideBarModel desktopSideBarModel;
  // State field(s) for inventoryCategory widget.
  String? inventoryCategoryValue;
  FormFieldController<String>? inventoryCategoryValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Model for PrincipalActionButtonOrange component.
  late PrincipalActionButtonOrangeModel principalActionButtonOrangeModel;
  // Stores action output result for [Backend Call - API (GENERATE REPORT FROM DB)] action in PrincipalActionButtonOrange widget.
  ApiCallResponse? generateReportFromDB;
  // Stores action output result for [Backend Call - API (CREATE REPORT OR INVENTORY FROM MAKE)] action in PrincipalActionButtonOrange widget.
  ApiCallResponse? generatePDFReportWeb;

  @override
  void initState(BuildContext context) {
    desktopSideBarModel = createModel(context, () => DesktopSideBarModel());
    principalActionButtonOrangeModel =
        createModel(context, () => PrincipalActionButtonOrangeModel());
  }

  @override
  void dispose() {
    desktopSideBarModel.dispose();
    principalActionButtonOrangeModel.dispose();
  }
}
