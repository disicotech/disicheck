import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/maintenance/components/mtto_detail/mtto_detail_widget.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'maintenance_detail_widget.dart' show MaintenanceDetailWidget;
import 'package:flutter/material.dart';

class MaintenanceDetailModel extends FlutterFlowModel<MaintenanceDetailWidget> {
  ///  Local state fields for this page.

  MaintenanceStruct? offlineMaitenance;
  void updateOfflineMaitenanceStruct(Function(MaintenanceStruct) updateFn) {
    updateFn(offlineMaitenance ??= MaintenanceStruct());
  }

  dynamic activities;

  ///  State fields for stateful widgets in this page.

  // Model for MttoDetail component.
  late MttoDetailModel mttoDetailModel1;
  // Model for MttoDetail component.
  late MttoDetailModel mttoDetailModel2;

  /// Query cache managers for this widget.

  final _cacheMaintenanceDetailManager =
      FutureRequestManager<List<MaintenancesRow>>();
  Future<List<MaintenancesRow>> cacheMaintenanceDetail({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<MaintenancesRow>> Function() requestFn,
  }) =>
      _cacheMaintenanceDetailManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheMaintenanceDetailCache() =>
      _cacheMaintenanceDetailManager.clear();
  void clearCacheMaintenanceDetailCacheKey(String? uniqueKey) =>
      _cacheMaintenanceDetailManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    mttoDetailModel1 = createModel(context, () => MttoDetailModel());
    mttoDetailModel2 = createModel(context, () => MttoDetailModel());
  }

  @override
  void dispose() {
    mttoDetailModel1.dispose();
    mttoDetailModel2.dispose();

    /// Dispose query cache managers for this widget.

    clearCacheMaintenanceDetailCache();
  }
}
