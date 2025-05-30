import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'activities_input_widget.dart' show ActivitiesInputWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActivitiesInputModel extends FlutterFlowModel<ActivitiesInputWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for activityName widget.
  FocusNode? activityNameFocusNode;
  TextEditingController? activityNameTextController;
  String? Function(BuildContext, String?)? activityNameTextControllerValidator;
  // State field(s) for activityDescription widget.
  FocusNode? activityDescriptionFocusNode;
  TextEditingController? activityDescriptionTextController;
  String? Function(BuildContext, String?)?
      activityDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    activityNameFocusNode?.dispose();
    activityNameTextController?.dispose();

    activityDescriptionFocusNode?.dispose();
    activityDescriptionTextController?.dispose();
  }
}
