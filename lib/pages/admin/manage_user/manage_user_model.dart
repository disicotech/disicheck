<<<<<<< HEAD
import '/backend/supabase/supabase.dart';
import '/components/commons/principal_action_button_orange/principal_action_button_orange_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/components/assign_project_to_a_user/assign_project_to_a_user_widget.dart';
import '/pages/admin/components/assign_role_to_a_user/assign_role_to_a_user_widget.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
=======
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/commons/alert_modal_delete/alert_modal_delete_widget.dart';
import '/components/commons/confirmation_modal/confirmation_modal_widget.dart';
import '/components/commons/principal_action_button_orange/principal_action_button_orange_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin/components/assign_project_to_a_user/assign_project_to_a_user_widget.dart';
import '/pages/admin/components/assign_role_to_a_user/assign_role_to_a_user_widget.dart';
import '/pages/admin/skeletons/shimmer_user_info/shimmer_user_info_widget.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/pages/home/components/skeletons/shimmer_current_project_name/shimmer_current_project_name_widget.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
>>>>>>> master
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'manage_user_widget.dart' show ManageUserWidget;
<<<<<<< HEAD
import 'package:flutter/material.dart';
=======
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
>>>>>>> master

class ManageUserModel extends FlutterFlowModel<ManageUserWidget> {
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
  // Stores action output result for [Backend Call - Delete Row(s)] action in Button widget.
  List<UsersRow>? deletedUser;

  /// Query cache managers for this widget.

  final _chacheCurrentUserProjectManager =
      FutureRequestManager<List<UsersWithProjectsRow>>();
  Future<List<UsersWithProjectsRow>> chacheCurrentUserProject({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsersWithProjectsRow>> Function() requestFn,
  }) =>
      _chacheCurrentUserProjectManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearChacheCurrentUserProjectCache() =>
      _chacheCurrentUserProjectManager.clear();
  void clearChacheCurrentUserProjectCacheKey(String? uniqueKey) =>
      _chacheCurrentUserProjectManager.clearRequest(uniqueKey);

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

    /// Dispose query cache managers for this widget.

    clearChacheCurrentUserProjectCache();
  }
}
