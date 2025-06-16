import '/backend/supabase/supabase.dart';
import '/components/commons/principal_action_button_orange/principal_action_button_orange_widget.dart';
import '/components/maintenance_object_list_view/maintenance_object_list_view_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'schedule_maintenance_page_widget.dart'
    show ScheduleMaintenancePageWidget;
import 'package:flutter/material.dart';

class ScheduleMaintenancePageModel
    extends FlutterFlowModel<ScheduleMaintenancePageWidget> {
  ///  Local state fields for this page.

  DateTimeRange? selectedMttDate;

  bool isMttObjectSet = false;

  bool requiresProvider = false;

  int? checkedIndex;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in ScheduleMaintenancePage widget.
  List<MaintenanceObjectsRow>? mttObjectToSchedule;
  // Model for MaintenanceObjectListView component.
  late MaintenanceObjectListViewModel maintenanceObjectListViewModel1;
  // State field(s) for mttoPersonAssigned widget.
  String? mttoPersonAssignedValue1;
  FormFieldController<String>? mttoPersonAssignedValueController1;
  // State field(s) for mttoPersonAssigned widget.
  String? mttoPersonAssignedValue2;
  FormFieldController<String>? mttoPersonAssignedValueController2;
  // State field(s) for mttoType widget.
  String? mttoTypeValue1;
  FormFieldController<String>? mttoTypeValueController1;
  // State field(s) for mttoFrecuency widget.
  String? mttoFrecuencyValue1;
  FormFieldController<String>? mttoFrecuencyValueController1;
  // State field(s) for requiresProvider widget.
  bool? requiresProviderValue1;
  // State field(s) for dontRequiresProvider widget.
  bool? dontRequiresProviderValue1;
  // State field(s) for mttoProviderName widget.
  FocusNode? mttoProviderNameFocusNode1;
  TextEditingController? mttoProviderNameTextController1;
  String? Function(BuildContext, String?)?
      mttoProviderNameTextController1Validator;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay1;
  // Model for PrincipalActionButtonOrange component.
  late PrincipalActionButtonOrangeModel principalActionButtonOrangeModel1;
  // Stores action output result for [Backend Call - Insert Row] action in PrincipalActionButtonOrange widget.
  MaintenancesRow? createNewMtto;
  // Model for MaintenanceObjectListView component.
  late MaintenanceObjectListViewModel maintenanceObjectListViewModel2;
  // State field(s) for mttoPersonAssigned widget.
  String? mttoPersonAssignedValue3;
  FormFieldController<String>? mttoPersonAssignedValueController3;
  // State field(s) for mttoType widget.
  String? mttoTypeValue2;
  FormFieldController<String>? mttoTypeValueController2;
  // State field(s) for mttoFrecuency widget.
  String? mttoFrecuencyValue2;
  FormFieldController<String>? mttoFrecuencyValueController2;
  // State field(s) for requiresProvider widget.
  bool? requiresProviderValue2;
  // State field(s) for dontRequiresProvider widget.
  bool? dontRequiresProviderValue2;
  // State field(s) for mttoProviderName widget.
  FocusNode? mttoProviderNameFocusNode2;
  TextEditingController? mttoProviderNameTextController2;
  String? Function(BuildContext, String?)?
      mttoProviderNameTextController2Validator;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay2;
  // Model for PrincipalActionButtonOrange component.
  late PrincipalActionButtonOrangeModel principalActionButtonOrangeModel2;

  @override
  void initState(BuildContext context) {
    maintenanceObjectListViewModel1 =
        createModel(context, () => MaintenanceObjectListViewModel());
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    principalActionButtonOrangeModel1 =
        createModel(context, () => PrincipalActionButtonOrangeModel());
    maintenanceObjectListViewModel2 =
        createModel(context, () => MaintenanceObjectListViewModel());
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    principalActionButtonOrangeModel2 =
        createModel(context, () => PrincipalActionButtonOrangeModel());
  }

  @override
  void dispose() {
    maintenanceObjectListViewModel1.dispose();
    mttoProviderNameFocusNode1?.dispose();
    mttoProviderNameTextController1?.dispose();

    principalActionButtonOrangeModel1.dispose();
    maintenanceObjectListViewModel2.dispose();
    mttoProviderNameFocusNode2?.dispose();
    mttoProviderNameTextController2?.dispose();

    principalActionButtonOrangeModel2.dispose();
  }
}
