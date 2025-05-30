import '/backend/api_requests/api_calls.dart';
<<<<<<< HEAD
import '/components/commons/principal_action_button_orange/principal_action_button_orange_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import 'reports_page_widget.dart' show ReportsPageWidget;
import 'package:flutter/material.dart';
=======
import '/backend/schema/enums/enums.dart';
import '/components/commons/principal_action_button_orange/principal_action_button_orange_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'reports_page_widget.dart' show ReportsPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
>>>>>>> master

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
