import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
<<<<<<< HEAD
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
=======
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:convert';
import '/index.dart';
import 'package:ff_commons/api_requests/api_manager.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
>>>>>>> master
import 'package:flutter/material.dart';

/// Once the role of the user is defined, this action takes the user to the
/// only-available pages based on the role.
Future conditionAdminRoleNavigation(BuildContext context) async {
  if (FFAppState().authenticatedRole == 1 ? false : false) {
    context.goNamed(
      HomePageWidget.routeName,
      extra: <String, dynamic>{
        kTransitionInfoKey: TransitionInfo(
          hasTransition: true,
          transitionType: PageTransitionType.fade,
          duration: Duration(milliseconds: 0),
        ),
      },
    );
  } else {
    return;
  }
}

/// This actions verifies and set in a Global State the user's role in order
/// to further implement validations across the app.
Future checkAndSetUserRole(BuildContext context) async {
  List<UsersRow>? authenticatedUser;

  authenticatedUser = await UsersTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'id',
      currentUserUid,
    ),
  );
  // Check authenticated use and set its RoleID
<<<<<<< HEAD
  FFAppState().authenticatedRole = authenticatedUser.firstOrNull!.roleId;
=======
  FFAppState().authenticatedRole = authenticatedUser!.firstOrNull!.roleId;
>>>>>>> master
  FFAppState().update(() {});
}

/// This actions checks if the users has been approved for the admin to use
/// the app.
Future<bool?> checkUserAprovalStatus(BuildContext context) async {
  List<AccessRequestsRow>? pendingAprovalStatus;

  pendingAprovalStatus = await AccessRequestsTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'access_request_id',
      currentUserUid,
    ),
  );
<<<<<<< HEAD
  if ((pendingAprovalStatus).isNotEmpty) {
=======
  if (pendingAprovalStatus != null && (pendingAprovalStatus)!.isNotEmpty) {
>>>>>>> master
    context.pushNamed(
      WaitForApprovalPageWidget.routeName,
      queryParameters: {
        'projectName': serializeParam(
<<<<<<< HEAD
          pendingAprovalStatus.firstOrNull?.projectRequested,
          ParamType.String,
        ),
        'userEmail': serializeParam(
          pendingAprovalStatus.firstOrNull?.email,
=======
          pendingAprovalStatus?.firstOrNull?.projectRequested,
          ParamType.String,
        ),
        'userEmail': serializeParam(
          pendingAprovalStatus?.firstOrNull?.email,
>>>>>>> master
          ParamType.String,
        ),
      }.withoutNulls,
    );
  }

  return null;
}

Future<List<MaintenancesWithProjectRow>?> checkAndFilterMttos(
    BuildContext context) async {
  List<UsersRow>? queryUserName;
  List<MaintenancesWithProjectRow>? queryMttosForCoordinators;
  List<MaintenancesWithProjectRow>? queryMttosForMttosResponsibles;

  // Query All Users
  queryUserName = await UsersTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'id',
      currentUserUid,
    ),
  );
  // Set User Name
<<<<<<< HEAD
  FFAppState().authenticatedUserName = queryUserName.firstOrNull!.name;
=======
  FFAppState().authenticatedUserName = queryUserName!.firstOrNull!.name;
>>>>>>> master
  if (FFAppState().authenticatedRole == 1) {
  } else if (FFAppState().authenticatedRole == 2) {
    // Querying Mttos for Coordinators
    queryMttosForCoordinators = await MaintenancesWithProjectTable().queryRows(
      queryFn: (q) => q.eqOrNull(
        'assigned_project_id',
        FFAppState().currentProject,
      ),
    );
  } else if (FFAppState().authenticatedRole == 3) {
    // Querying Mttos for Res. Mttos
    queryMttosForMttosResponsibles =
        await MaintenancesWithProjectTable().queryRows(
      queryFn: (q) => q.or(
          "responsible_id.eq.${queryUserName?.firstOrNull?.id}, assigned_project_id.eq.${FFAppState().currentProject}"),
    );
  }

  return null;
}

/// This action downloads all the existing maintenance objects listed for the
/// current project and set them into a Data Type to further use on off-line
/// environments.
Future loadAndSetInventory(BuildContext context) async {
  ApiCallResponse? getAllMaintenanceObjects;

  getAllMaintenanceObjects = await GetAllUsersByProjectCall.call();

<<<<<<< HEAD
  if ((getAllMaintenanceObjects.succeeded ?? true)) {
    FFAppState().inventoryList = ((getAllMaintenanceObjects.jsonBody ?? '')
=======
  if ((getAllMaintenanceObjects?.succeeded ?? true)) {
    FFAppState().inventoryList = ((getAllMaintenanceObjects?.jsonBody ?? '')
>>>>>>> master
            .toList()
            .map<MaintenanceObjectStruct?>(MaintenanceObjectStruct.maybeFromMap)
            .toList() as Iterable<MaintenanceObjectStruct?>)
        .withoutNulls
        .toList()
        .cast<MaintenanceObjectStruct>();
  } else {
    return;
  }
}
