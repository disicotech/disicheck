import '/flutter_flow/flutter_flow_util.dart';
import 'input_element_widget.dart' show InputElementWidget;
import 'package:flutter/material.dart';

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
