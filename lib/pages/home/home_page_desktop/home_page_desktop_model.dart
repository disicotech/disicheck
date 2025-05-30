import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home/components/current_project/current_project_widget.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/pages/home/components/maintenance_update/maintenance_update_widget.dart';
import '/pages/resources/components/maintenance_stats/maintenance_stats_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'home_page_desktop_widget.dart' show HomePageDesktopWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageDesktopModel extends FlutterFlowModel<HomePageDesktopWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DesktopSideBar component.
  late DesktopSideBarModel desktopSideBarModel;
  // Model for CurrentProject component.
  late CurrentProjectModel currentProjectModel;
  // Model for MaintenanceStats component.
  late MaintenanceStatsModel maintenanceStatsModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Models for MaintenanceUpdate dynamic component.
  late FlutterFlowDynamicModels<MaintenanceUpdateModel> maintenanceUpdateModels;

  @override
  void initState(BuildContext context) {
    desktopSideBarModel = createModel(context, () => DesktopSideBarModel());
    currentProjectModel = createModel(context, () => CurrentProjectModel());
    maintenanceStatsModel = createModel(context, () => MaintenanceStatsModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    maintenanceUpdateModels =
        FlutterFlowDynamicModels(() => MaintenanceUpdateModel());
  }

  @override
  void dispose() {
    desktopSideBarModel.dispose();
    currentProjectModel.dispose();
    maintenanceStatsModel.dispose();
    maintenanceUpdateModels.dispose();
  }
}
