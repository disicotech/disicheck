import '/components/commons/principal_action_button_orange/principal_action_button_orange_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgot_pass_word_page_widget.dart' show ForgotPassWordPageWidget;
import 'package:flutter/material.dart';

class ForgotPassWordPageModel
    extends FlutterFlowModel<ForgotPassWordPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // Model for PrincipalActionButtonOrange component.
  late PrincipalActionButtonOrangeModel principalActionButtonOrangeModel;

  @override
  void initState(BuildContext context) {
    principalActionButtonOrangeModel =
        createModel(context, () => PrincipalActionButtonOrangeModel());
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    principalActionButtonOrangeModel.dispose();
  }
}
