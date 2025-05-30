import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/commons/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/components/admin_home_view_desktop/admin_home_view_desktop_widget.dart';
import '/pages/admin/components/admin_home_view_mobile/admin_home_view_mobile_widget.dart';
import '/pages/home/components/current_project/current_project_widget.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/pages/home/components/maintenance_update/maintenance_update_widget.dart';
import '/pages/home/components/standard_home_view_desktop/standard_home_view_desktop_widget.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<MaintenancesWithProjectRow> mttos = [];
  void addToMttos(MaintenancesWithProjectRow item) => mttos.add(item);
  void removeFromMttos(MaintenancesWithProjectRow item) => mttos.remove(item);
  void removeAtIndexFromMttos(int index) => mttos.removeAt(index);
  void insertAtIndexInMttos(int index, MaintenancesWithProjectRow item) =>
      mttos.insert(index, item);
  void updateMttosAtIndex(
          int index, Function(MaintenancesWithProjectRow) updateFn) =>
      mttos[index] = updateFn(mttos[index]);

  String? nullableVarialbe;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Action Block - CheckAndFilterMttos] action in HomePage widget.
  List<MaintenancesWithProjectRow>? returnFromFilteredMttos;
  // Stores action output result for [Custom Action - checkInternetConnection] action in HomePage widget.
  bool? isConnected;
  // Stores action output result for [Backend Call - API (GET ALL MAINTENANCE OBJECTS Copy)] action in HomePage widget.
  ApiCallResponse? setAllMaintenanceObjects;
  // Stores action output result for [Backend Call - API (GET MAINTENANCES WITH PROJECT)] action in HomePage widget.
  ApiCallResponse? setAllMaintenance;
  // Stores action output result for [Backend Call - Insert Row] action in HomePage widget.
  MaintenancesRow? createOfflineMaintenance;
  // Stores action output result for [Backend Call - API (GET USER MATCHING ROLE AND PROJECT Copy)] action in HomePage widget.
  ApiCallResponse? setAllUsersByProject;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<MaintenancesWithProjectRow>? queryMttosForCoordinators;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<MaintenancesWithProjectRow>? queryMttosForMttosResponsibles;
  // Model for AdminHomeViewMobile component.
  late AdminHomeViewMobileModel adminHomeViewMobileModel;
  // Model for CurrentProject component.
  late CurrentProjectModel currentProjectModel1;
  // Models for MaintenanceUpdate dynamic component.
  late FlutterFlowDynamicModels<MaintenanceUpdateModel>
      maintenanceUpdateModels1;
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // Model for DesktopSideBar component.
  late DesktopSideBarModel desktopSideBarModel;
  // Model for CurrentProject component.
  late CurrentProjectModel currentProjectModel2;
  // Model for AdminHomeViewDesktop component.
  late AdminHomeViewDesktopModel adminHomeViewDesktopModel;
  // Model for StandardHomeViewDesktop component.
  late StandardHomeViewDesktopModel standardHomeViewDesktopModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Models for MaintenanceUpdate dynamic component.
  late FlutterFlowDynamicModels<MaintenanceUpdateModel>
      maintenanceUpdateModels2;

  /// Query cache managers for this widget.

  final _cacheDatabaseReportManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> cacheDatabaseReport({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _cacheDatabaseReportManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheDatabaseReportCache() => _cacheDatabaseReportManager.clear();
  void clearCacheDatabaseReportCacheKey(String? uniqueKey) =>
      _cacheDatabaseReportManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    adminHomeViewMobileModel =
        createModel(context, () => AdminHomeViewMobileModel());
    currentProjectModel1 = createModel(context, () => CurrentProjectModel());
    maintenanceUpdateModels1 =
        FlutterFlowDynamicModels(() => MaintenanceUpdateModel());
    navBarModel = createModel(context, () => NavBarModel());
    desktopSideBarModel = createModel(context, () => DesktopSideBarModel());
    currentProjectModel2 = createModel(context, () => CurrentProjectModel());
    adminHomeViewDesktopModel =
        createModel(context, () => AdminHomeViewDesktopModel());
    standardHomeViewDesktopModel =
        createModel(context, () => StandardHomeViewDesktopModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    maintenanceUpdateModels2 =
        FlutterFlowDynamicModels(() => MaintenanceUpdateModel());
  }

  @override
  void dispose() {
    adminHomeViewMobileModel.dispose();
    currentProjectModel1.dispose();
    maintenanceUpdateModels1.dispose();
    navBarModel.dispose();
    desktopSideBarModel.dispose();
    currentProjectModel2.dispose();
    adminHomeViewDesktopModel.dispose();
    standardHomeViewDesktopModel.dispose();
    maintenanceUpdateModels2.dispose();

    /// Dispose query cache managers for this widget.

    clearCacheDatabaseReportCache();
  }
}
