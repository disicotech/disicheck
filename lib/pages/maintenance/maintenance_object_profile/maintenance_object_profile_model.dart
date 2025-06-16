import '/flutter_flow/flutter_flow_util.dart';
import '/pages/maintenance/components/maintenance_history_card/maintenance_history_card_widget.dart';
import 'maintenance_object_profile_widget.dart'
    show MaintenanceObjectProfileWidget;
import 'package:flutter/material.dart';

class MaintenanceObjectProfileModel
    extends FlutterFlowModel<MaintenanceObjectProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for MaintenanceHistoryCard dynamic component.
  late FlutterFlowDynamicModels<MaintenanceHistoryCardModel>
      maintenanceHistoryCardModels;

  @override
  void initState(BuildContext context) {
    maintenanceHistoryCardModels =
        FlutterFlowDynamicModels(() => MaintenanceHistoryCardModel());
  }

  @override
  void dispose() {
    maintenanceHistoryCardModels.dispose();
  }
}
