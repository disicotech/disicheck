import '/backend/supabase/supabase.dart';
import '/components/commons/confirmation_modal/confirmation_modal_widget.dart';
import '/components/commons/principal_action_button_orange/principal_action_button_orange_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/admin/components/assign_project_to_a_user/assign_project_to_a_user_widget.dart';
import '/pages/admin/components/assign_role_to_a_user/assign_role_to_a_user_widget.dart';
import '/pages/maintenance/create_maintenance_objects/components/input_element/input_element_widget.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'create_user_page_widget.dart' show CreateUserPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateUserPageModel extends FlutterFlowModel<CreateUserPageWidget> {
  ///  Local state fields for this page.
  /// Holds the profile picture that will be used in the user's profile.
  String? uploadedProfilePhoto;

  int? selectedRoleToAssign;

  String? selectedPojectToAssign;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadedLocalPhotoFileFromAdmin = false;
  FFUploadedFile uploadedLocalFile_uploadedLocalPhotoFileFromAdmin =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadedLocalPhotoFileFromAdmin = '';

  // Model for userName.
  late InputElementModel userNameModel;
  // State field(s) for dni widget.
  FocusNode? dniFocusNode;
  TextEditingController? dniTextController;
  String? Function(BuildContext, String?)? dniTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for tempPassword widget.
  FocusNode? tempPasswordFocusNode;
  TextEditingController? tempPasswordTextController;
  late bool tempPasswordVisibility;
  String? Function(BuildContext, String?)? tempPasswordTextControllerValidator;
  // Model for AssignRoleToAUser component.
  late AssignRoleToAUserModel assignRoleToAUserModel;
  // Model for AssignProjectToAUser component.
  late AssignProjectToAUserModel assignProjectToAUserModel;
  // Model for PrincipalActionButtonOrange component.
  late PrincipalActionButtonOrangeModel principalActionButtonOrangeModel;
  // Stores action output result for [Custom Action - supabaseSignUpWithEmailPasswordAction] action in PrincipalActionButtonOrange widget.
  String? supabaseSignUpWithEmailAndPassword;
  // Stores action output result for [Backend Call - Insert Row] action in PrincipalActionButtonOrange widget.
  UsersRow? createNewUserFromAdmin;

  @override
  void initState(BuildContext context) {
    userNameModel = createModel(context, () => InputElementModel());
    tempPasswordVisibility = false;
    assignRoleToAUserModel =
        createModel(context, () => AssignRoleToAUserModel());
    assignProjectToAUserModel =
        createModel(context, () => AssignProjectToAUserModel());
    principalActionButtonOrangeModel =
        createModel(context, () => PrincipalActionButtonOrangeModel());
  }

  @override
  void dispose() {
    userNameModel.dispose();
    dniFocusNode?.dispose();
    dniTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    tempPasswordFocusNode?.dispose();
    tempPasswordTextController?.dispose();

    assignRoleToAUserModel.dispose();
    assignProjectToAUserModel.dispose();
    principalActionButtonOrangeModel.dispose();
  }
}
