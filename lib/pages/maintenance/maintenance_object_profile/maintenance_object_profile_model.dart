import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/maintenance/components/maintenance_history_card/maintenance_history_card_widget.dart';
import '/pages/resources/components/empty_maintenance_list/empty_maintenance_list_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'maintenance_object_profile_widget.dart'
    show MaintenanceObjectProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
