import '/flutter_flow/flutter_flow_util.dart';
import '/pages/resources/components/maintenance_stats/maintenance_stats_widget.dart';
import 'admin_home_view_desktop_widget.dart' show AdminHomeViewDesktopWidget;
import 'package:flutter/material.dart';

class AdminHomeViewDesktopModel
    extends FlutterFlowModel<AdminHomeViewDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MaintenanceStats component.
  late MaintenanceStatsModel maintenanceStatsModel;

  @override
  void initState(BuildContext context) {
    maintenanceStatsModel = createModel(context, () => MaintenanceStatsModel());
  }

  @override
  void dispose() {
    maintenanceStatsModel.dispose();
  }
}
