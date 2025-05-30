import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/skeletons/shimmer_current_project_name/shimmer_current_project_name_widget.dart';
import '/pages/maintenance/components/skeletons/shimmer_maintenance/shimmer_maintenance_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'scheduled_maintenance_object_widget.dart'
    show ScheduledMaintenanceObjectWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScheduledMaintenanceObjectModel
    extends FlutterFlowModel<ScheduledMaintenanceObjectWidget> {
  /// Query cache managers for this widget.

  final _mttoStatusScheduledManager = FutureRequestManager<List<ProjectsRow>>();
  Future<List<ProjectsRow>> mttoStatusScheduled({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProjectsRow>> Function() requestFn,
  }) =>
      _mttoStatusScheduledManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMttoStatusScheduledCache() => _mttoStatusScheduledManager.clear();
  void clearMttoStatusScheduledCacheKey(String? uniqueKey) =>
      _mttoStatusScheduledManager.clearRequest(uniqueKey);

  final _mttProjectsManager =
      FutureRequestManager<List<MaintenanceObjectsRow>>();
  Future<List<MaintenanceObjectsRow>> mttProjects({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<MaintenanceObjectsRow>> Function() requestFn,
  }) =>
      _mttProjectsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMttProjectsCache() => _mttProjectsManager.clear();
  void clearMttProjectsCacheKey(String? uniqueKey) =>
      _mttProjectsManager.clearRequest(uniqueKey);

  final _mttAssignedProjectManager = FutureRequestManager<List<UsersRow>>();
  Future<List<UsersRow>> mttAssignedProject({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsersRow>> Function() requestFn,
  }) =>
      _mttAssignedProjectManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMttAssignedProjectCache() => _mttAssignedProjectManager.clear();
  void clearMttAssignedProjectCacheKey(String? uniqueKey) =>
      _mttAssignedProjectManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearMttoStatusScheduledCache();

    clearMttProjectsCache();

    clearMttAssignedProjectCache();
  }
}
