import '/components/commons/principal_action_button_orange/principal_action_button_orange_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/components/assign_project_to_a_user/assign_project_to_a_user_widget.dart';
import '/pages/admin/components/assign_role_to_a_user/assign_role_to_a_user_widget.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/index.dart';
import 'control_access_request_page_widget.dart'
    show ControlAccessRequestPageWidget;
import 'package:flutter/material.dart';

class ControlAccessRequestPageModel
    extends FlutterFlowModel<ControlAccessRequestPageWidget> {
  ///  Local state fields for this page.

  String? selectedPojectToAssign;

  int? selectedRoleToAssign;

  ///  State fields for stateful widgets in this page.

  // Model for DesktopSideBar component.
  late DesktopSideBarModel desktopSideBarModel;
  // Model for AssignRoleToAUser component.
  late AssignRoleToAUserModel assignRoleToAUserModel;
  // Model for AssignProjectToAUser component.
  late AssignProjectToAUserModel assignProjectToAUserModel;
  // Model for PrincipalActionButtonOrange component.
  late PrincipalActionButtonOrangeModel principalActionButtonOrangeModel;

  @override
  void initState(BuildContext context) {
    desktopSideBarModel = createModel(context, () => DesktopSideBarModel());
    assignRoleToAUserModel =
        createModel(context, () => AssignRoleToAUserModel());
    assignProjectToAUserModel =
        createModel(context, () => AssignProjectToAUserModel());
    principalActionButtonOrangeModel =
        createModel(context, () => PrincipalActionButtonOrangeModel());
  }

  @override
  void dispose() {
    desktopSideBarModel.dispose();
    assignRoleToAUserModel.dispose();
    assignProjectToAUserModel.dispose();
    principalActionButtonOrangeModel.dispose();
  }
}
