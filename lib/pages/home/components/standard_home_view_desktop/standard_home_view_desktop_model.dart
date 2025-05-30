import '/flutter_flow/flutter_flow_util.dart';
import '/pages/resources/components/maintenance_stats/maintenance_stats_widget.dart';
import 'standard_home_view_desktop_widget.dart'
    show StandardHomeViewDesktopWidget;
import 'package:flutter/material.dart';

class StandardHomeViewDesktopModel
    extends FlutterFlowModel<StandardHomeViewDesktopWidget> {
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
