<<<<<<< HEAD
import '/backend/supabase/supabase.dart';
import '/components/commons/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import 'general_schedule_widget.dart' show GeneralScheduleWidget;
import 'package:flutter/material.dart';
=======
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/commons/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/admin/skeletons/shimmer_general_schedule/shimmer_general_schedule_widget.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'general_schedule_widget.dart' show GeneralScheduleWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
>>>>>>> master

class GeneralScheduleModel extends FlutterFlowModel<GeneralScheduleWidget> {
  ///  Local state fields for this page.

  String selectedProjectToFilter = '0c930497-7018-434d-a839-b7d7714fe6fa';

  bool searchIsActive = false;

  ///  State fields for stateful widgets in this page.

  // Model for DesktopSideBar component.
  late DesktopSideBarModel desktopSideBarModel;
  // State field(s) for scheduleCategoryDropdown widget.
  String? scheduleCategoryDropdownValue1;
  FormFieldController<String>? scheduleCategoryDropdownValueController1;
  // State field(s) for scheduleProjectDropdown widget.
  String? scheduleProjectDropdownValue1;
  FormFieldController<String>? scheduleProjectDropdownValueController1;
  // State field(s) for scheduleCodeFilter widget.
  FocusNode? scheduleCodeFilterFocusNode1;
  TextEditingController? scheduleCodeFilterTextController1;
  String? Function(BuildContext, String?)?
      scheduleCodeFilterTextController1Validator;
  // State field(s) for scheduleCategoryDropdown widget.
  String? scheduleCategoryDropdownValue2;
  FormFieldController<String>? scheduleCategoryDropdownValueController2;
  // State field(s) for scheduleProjectDropdown widget.
  String? scheduleProjectDropdownValue2;
  FormFieldController<String>? scheduleProjectDropdownValueController2;
  // State field(s) for scheduleCodeFilter widget.
  FocusNode? scheduleCodeFilterFocusNode2;
  TextEditingController? scheduleCodeFilterTextController2;
  String? Function(BuildContext, String?)?
      scheduleCodeFilterTextController2Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<MaintenanceCronogramaRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<dynamic>();
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    desktopSideBarModel = createModel(context, () => DesktopSideBarModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    desktopSideBarModel.dispose();
    scheduleCodeFilterFocusNode1?.dispose();
    scheduleCodeFilterTextController1?.dispose();

    scheduleCodeFilterFocusNode2?.dispose();
    scheduleCodeFilterTextController2?.dispose();

    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
    navBarModel.dispose();
  }
}
