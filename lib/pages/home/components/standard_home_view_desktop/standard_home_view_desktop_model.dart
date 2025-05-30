import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/resources/components/maintenance_stats/maintenance_stats_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'standard_home_view_desktop_widget.dart'
    show StandardHomeViewDesktopWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
