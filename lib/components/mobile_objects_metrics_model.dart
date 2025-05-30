import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/resources/skeletons/shimmer_mobile_objects_metrics/shimmer_mobile_objects_metrics_widget.dart';
import 'dart:ui';
import '/flutter_flow/request_manager.dart';

import 'mobile_objects_metrics_widget.dart' show MobileObjectsMetricsWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MobileObjectsMetricsModel
    extends FlutterFlowModel<MobileObjectsMetricsWidget> {
  /// Query cache managers for this widget.

  final _cacheMaintenanceObjectWithMttCountManager =
      FutureRequestManager<List<ObjectsWithMttoCountRow>>();
  Future<List<ObjectsWithMttoCountRow>> cacheMaintenanceObjectWithMttCount({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ObjectsWithMttoCountRow>> Function() requestFn,
  }) =>
      _cacheMaintenanceObjectWithMttCountManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheMaintenanceObjectWithMttCountCache() =>
      _cacheMaintenanceObjectWithMttCountManager.clear();
  void clearCacheMaintenanceObjectWithMttCountCacheKey(String? uniqueKey) =>
      _cacheMaintenanceObjectWithMttCountManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearCacheMaintenanceObjectWithMttCountCache();
  }
}
