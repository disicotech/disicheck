import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/components/commons/nav_bar/nav_bar_widget.dart';
import '/components/maintenance_object_grid_view/maintenance_object_grid_view_widget.dart';
import '/components/maintenance_object_list_view/maintenance_object_list_view_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/pages/home/components/mobile_objects_metrics/mobile_objects_metrics_widget.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'assets_inventory_page_widget.dart' show AssetsInventoryPageWidget;
import 'package:flutter/material.dart';

class AssetsInventoryPageModel
    extends FlutterFlowModel<AssetsInventoryPageWidget> {
  ///  Local state fields for this page.

  List<String> omCategorySearch = ['Herramientas', 'Maquinaria'];
  void addToOmCategorySearch(String item) => omCategorySearch.add(item);
  void removeFromOmCategorySearch(String item) => omCategorySearch.remove(item);
  void removeAtIndexFromOmCategorySearch(int index) =>
      omCategorySearch.removeAt(index);
  void insertAtIndexInOmCategorySearch(int index, String item) =>
      omCategorySearch.insert(index, item);
  void updateOmCategorySearchAtIndex(int index, Function(String) updateFn) =>
      omCategorySearch[index] = updateFn(omCategorySearch[index]);

  LayoutView? layouView = LayoutView.LIST;

  String? index = '';

  bool hasLoadedData = false;

  String projectToFilterAssets = '0c930497-7018-434d-a839-b7d7714fe6fa';

  String? selectedCategory;

  String? searchedAssetCode;

  List<UnassignedObjectsRow> searchedAssets = [];
  void addToSearchedAssets(UnassignedObjectsRow item) =>
      searchedAssets.add(item);
  void removeFromSearchedAssets(UnassignedObjectsRow item) =>
      searchedAssets.remove(item);
  void removeAtIndexFromSearchedAssets(int index) =>
      searchedAssets.removeAt(index);
  void insertAtIndexInSearchedAssets(int index, UnassignedObjectsRow item) =>
      searchedAssets.insert(index, item);
  void updateSearchedAssetsAtIndex(
          int index, Function(UnassignedObjectsRow) updateFn) =>
      searchedAssets[index] = updateFn(searchedAssets[index]);

  List<UnassignedObjectsRow> baseAssets = [];
  void addToBaseAssets(UnassignedObjectsRow item) => baseAssets.add(item);
  void removeFromBaseAssets(UnassignedObjectsRow item) =>
      baseAssets.remove(item);
  void removeAtIndexFromBaseAssets(int index) => baseAssets.removeAt(index);
  void insertAtIndexInBaseAssets(int index, UnassignedObjectsRow item) =>
      baseAssets.insert(index, item);
  void updateBaseAssetsAtIndex(
          int index, Function(UnassignedObjectsRow) updateFn) =>
      baseAssets[index] = updateFn(baseAssets[index]);

  bool searchIsActive = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in AssetsInventoryPage widget.
  List<UnassignedObjectsRow>? queryAuxUnassignedObjects;
  // Model for DesktopSideBar component.
  late DesktopSideBarModel desktopSideBarModel1;
  // Model for MobileObjectsMetrics component.
  late MobileObjectsMetricsModel mobileObjectsMetricsModel;
  // State field(s) for selectedProjectToAssign widget.
  String? selectedProjectToAssignValue;
  FormFieldController<String>? selectedProjectToAssignValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for MaintenanceObjectListView dynamic component.
  late FlutterFlowDynamicModels<MaintenanceObjectListViewModel>
      maintenanceObjectListViewModels1;
  // Models for MaintenanceObjectListView dynamic component.
  late FlutterFlowDynamicModels<MaintenanceObjectListViewModel>
      maintenanceObjectListViewModels2;
  // Models for MaintenanceObjectListView dynamic component.
  late FlutterFlowDynamicModels<MaintenanceObjectListViewModel>
      maintenanceObjectListViewModels3;
  // Models for MaintenanceObjectListView dynamic component.
  late FlutterFlowDynamicModels<MaintenanceObjectListViewModel>
      maintenanceObjectListViewModels4;
  // Models for MaintenanceObjectGridView dynamic component.
  late FlutterFlowDynamicModels<MaintenanceObjectGridViewModel>
      maintenanceObjectGridViewModels1;
  // Model for NavBar component.
  late NavBarModel navBarModel1;
  // Model for DesktopSideBar component.
  late DesktopSideBarModel desktopSideBarModel2;
  // Models for MaintenanceObjectListView dynamic component.
  late FlutterFlowDynamicModels<MaintenanceObjectListViewModel>
      maintenanceObjectListViewModels5;
  // Models for MaintenanceObjectGridView dynamic component.
  late FlutterFlowDynamicModels<MaintenanceObjectGridViewModel>
      maintenanceObjectGridViewModels2;
  // Model for NavBar component.
  late NavBarModel navBarModel2;

  /// Query cache managers for this widget.

  final _cacheMaintenanceObjectsListManager =
      FutureRequestManager<List<MaintenanceObjectsRow>>();
  Future<List<MaintenanceObjectsRow>> cacheMaintenanceObjectsList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<MaintenanceObjectsRow>> Function() requestFn,
  }) =>
      _cacheMaintenanceObjectsListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheMaintenanceObjectsListCache() =>
      _cacheMaintenanceObjectsListManager.clear();
  void clearCacheMaintenanceObjectsListCacheKey(String? uniqueKey) =>
      _cacheMaintenanceObjectsListManager.clearRequest(uniqueKey);

  final _cacheMaintenanceObjectListForAdminsManager =
      FutureRequestManager<List<UnassignedObjectsRow>>();
  Future<List<UnassignedObjectsRow>> cacheMaintenanceObjectListForAdmins({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UnassignedObjectsRow>> Function() requestFn,
  }) =>
      _cacheMaintenanceObjectListForAdminsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheMaintenanceObjectListForAdminsCache() =>
      _cacheMaintenanceObjectListForAdminsManager.clear();
  void clearCacheMaintenanceObjectListForAdminsCacheKey(String? uniqueKey) =>
      _cacheMaintenanceObjectListForAdminsManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    desktopSideBarModel1 = createModel(context, () => DesktopSideBarModel());
    mobileObjectsMetricsModel =
        createModel(context, () => MobileObjectsMetricsModel());
    maintenanceObjectListViewModels1 =
        FlutterFlowDynamicModels(() => MaintenanceObjectListViewModel());
    maintenanceObjectListViewModels2 =
        FlutterFlowDynamicModels(() => MaintenanceObjectListViewModel());
    maintenanceObjectListViewModels3 =
        FlutterFlowDynamicModels(() => MaintenanceObjectListViewModel());
    maintenanceObjectListViewModels4 =
        FlutterFlowDynamicModels(() => MaintenanceObjectListViewModel());
    maintenanceObjectGridViewModels1 =
        FlutterFlowDynamicModels(() => MaintenanceObjectGridViewModel());
    navBarModel1 = createModel(context, () => NavBarModel());
    desktopSideBarModel2 = createModel(context, () => DesktopSideBarModel());
    maintenanceObjectListViewModels5 =
        FlutterFlowDynamicModels(() => MaintenanceObjectListViewModel());
    maintenanceObjectGridViewModels2 =
        FlutterFlowDynamicModels(() => MaintenanceObjectGridViewModel());
    navBarModel2 = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    desktopSideBarModel1.dispose();
    mobileObjectsMetricsModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    maintenanceObjectListViewModels1.dispose();
    maintenanceObjectListViewModels2.dispose();
    maintenanceObjectListViewModels3.dispose();
    maintenanceObjectListViewModels4.dispose();
    maintenanceObjectGridViewModels1.dispose();
    navBarModel1.dispose();
    desktopSideBarModel2.dispose();
    maintenanceObjectListViewModels5.dispose();
    maintenanceObjectGridViewModels2.dispose();
    navBarModel2.dispose();

    /// Dispose query cache managers for this widget.

    clearCacheMaintenanceObjectsListCache();

    clearCacheMaintenanceObjectListForAdminsCache();
  }
}
