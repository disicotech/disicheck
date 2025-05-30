<<<<<<< HEAD
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/pages/maintenance/components/maintenance_history_card/maintenance_history_card_widget.dart';
import '/index.dart';
import 'asset_profile_page_widget.dart' show AssetProfilePageWidget;
import 'package:flutter/material.dart';
=======
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/pages/maintenance/components/maintenance_history_card/maintenance_history_card_widget.dart';
import '/pages/resources/components/empty_maintenance_list/empty_maintenance_list_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'asset_profile_page_widget.dart' show AssetProfilePageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
>>>>>>> master

class AssetProfilePageModel extends FlutterFlowModel<AssetProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DesktopSideBar component.
  late DesktopSideBarModel desktopSideBarModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for MaintenanceHistoryCard dynamic component.
  late FlutterFlowDynamicModels<MaintenanceHistoryCardModel>
      maintenanceHistoryCardModels;

  @override
  void initState(BuildContext context) {
    desktopSideBarModel = createModel(context, () => DesktopSideBarModel());
    maintenanceHistoryCardModels =
        FlutterFlowDynamicModels(() => MaintenanceHistoryCardModel());
  }

  @override
  void dispose() {
    desktopSideBarModel.dispose();
    tabBarController?.dispose();
    maintenanceHistoryCardModels.dispose();
  }
}
