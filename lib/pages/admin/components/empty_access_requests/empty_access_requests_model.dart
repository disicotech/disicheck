import '/components/commons/principal_action_button_orange/principal_action_button_orange_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'empty_access_requests_widget.dart' show EmptyAccessRequestsWidget;
import 'package:flutter/material.dart';

class EmptyAccessRequestsModel
    extends FlutterFlowModel<EmptyAccessRequestsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for PrincipalActionButtonOrange component.
  late PrincipalActionButtonOrangeModel principalActionButtonOrangeModel;

  @override
  void initState(BuildContext context) {
    principalActionButtonOrangeModel =
        createModel(context, () => PrincipalActionButtonOrangeModel());
  }

  @override
  void dispose() {
    principalActionButtonOrangeModel.dispose();
  }
}
