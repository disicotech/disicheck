import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/skeletons/shimmer_current_project_name/shimmer_current_project_name_widget.dart';
import 'dart:ui';
import 'current_project_widget.dart' show CurrentProjectWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CurrentProjectModel extends FlutterFlowModel<CurrentProjectWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in CurrentProject widget.
  List<UsersProjectsRow>? queryUserProjectId;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
