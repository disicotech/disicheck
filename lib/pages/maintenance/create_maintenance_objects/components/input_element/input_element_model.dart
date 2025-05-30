import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'input_element_widget.dart' show InputElementWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InputElementModel extends FlutterFlowModel<InputElementWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for assetName widget.
  FocusNode? assetNameFocusNode;
  TextEditingController? assetNameTextController;
  String? Function(BuildContext, String?)? assetNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    assetNameFocusNode?.dispose();
    assetNameTextController?.dispose();
  }
}
