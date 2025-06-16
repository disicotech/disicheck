import '/components/commons/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/pages/maintenance/scheduled_maintenance_object/scheduled_maintenance_object_widget.dart';
import '/index.dart';
import 'maintenance_page_widget.dart' show MaintenancePageWidget;
import 'package:flutter/material.dart';

class MaintenancePageModel extends FlutterFlowModel<MaintenancePageWidget> {
  ///  Local state fields for this page.

  List<String> arrayTest = [
    'Hello World 1 ',
    'Hello World 2',
    'Hello World 3',
    'Hello World 4'
  ];
  void addToArrayTest(String item) => arrayTest.add(item);
  void removeFromArrayTest(String item) => arrayTest.remove(item);
  void removeAtIndexFromArrayTest(int index) => arrayTest.removeAt(index);
  void insertAtIndexInArrayTest(int index, String item) =>
      arrayTest.insert(index, item);
  void updateArrayTestAtIndex(int index, Function(String) updateFn) =>
      arrayTest[index] = updateFn(arrayTest[index]);

  ///  State fields for stateful widgets in this page.

  // Model for DesktopSideBar component.
  late DesktopSideBarModel desktopSideBarModel1;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;
  int get tabBarPreviousIndex1 =>
      tabBarController1 != null ? tabBarController1!.previousIndex : 0;

  // Models for ScheduledMaintenanceObject dynamic component.
  late FlutterFlowDynamicModels<ScheduledMaintenanceObjectModel>
      scheduledMaintenanceObjectModels1;
  // Models for ScheduledMaintenanceObject dynamic component.
  late FlutterFlowDynamicModels<ScheduledMaintenanceObjectModel>
      scheduledMaintenanceObjectModels2;
  // Models for ScheduledMaintenanceObject dynamic component.
  late FlutterFlowDynamicModels<ScheduledMaintenanceObjectModel>
      scheduledMaintenanceObjectModels3;
  // Model for NavBar component.
  late NavBarModel navBarModel1;
  // Model for DesktopSideBar component.
  late DesktopSideBarModel desktopSideBarModel2;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;
  int get tabBarPreviousIndex2 =>
      tabBarController2 != null ? tabBarController2!.previousIndex : 0;

  // Models for ScheduledMaintenanceObject dynamic component.
  late FlutterFlowDynamicModels<ScheduledMaintenanceObjectModel>
      scheduledMaintenanceObjectModels4;
  // Models for ScheduledMaintenanceObject dynamic component.
  late FlutterFlowDynamicModels<ScheduledMaintenanceObjectModel>
      scheduledMaintenanceObjectModels5;
  // Models for ScheduledMaintenanceObject dynamic component.
  late FlutterFlowDynamicModels<ScheduledMaintenanceObjectModel>
      scheduledMaintenanceObjectModels6;
  // Model for NavBar component.
  late NavBarModel navBarModel2;

  @override
  void initState(BuildContext context) {
    desktopSideBarModel1 = createModel(context, () => DesktopSideBarModel());
    scheduledMaintenanceObjectModels1 =
        FlutterFlowDynamicModels(() => ScheduledMaintenanceObjectModel());
    scheduledMaintenanceObjectModels2 =
        FlutterFlowDynamicModels(() => ScheduledMaintenanceObjectModel());
    scheduledMaintenanceObjectModels3 =
        FlutterFlowDynamicModels(() => ScheduledMaintenanceObjectModel());
    navBarModel1 = createModel(context, () => NavBarModel());
    desktopSideBarModel2 = createModel(context, () => DesktopSideBarModel());
    scheduledMaintenanceObjectModels4 =
        FlutterFlowDynamicModels(() => ScheduledMaintenanceObjectModel());
    scheduledMaintenanceObjectModels5 =
        FlutterFlowDynamicModels(() => ScheduledMaintenanceObjectModel());
    scheduledMaintenanceObjectModels6 =
        FlutterFlowDynamicModels(() => ScheduledMaintenanceObjectModel());
    navBarModel2 = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    desktopSideBarModel1.dispose();
    tabBarController1?.dispose();
    scheduledMaintenanceObjectModels1.dispose();
    scheduledMaintenanceObjectModels2.dispose();
    scheduledMaintenanceObjectModels3.dispose();
    navBarModel1.dispose();
    desktopSideBarModel2.dispose();
    tabBarController2?.dispose();
    scheduledMaintenanceObjectModels4.dispose();
    scheduledMaintenanceObjectModels5.dispose();
    scheduledMaintenanceObjectModels6.dispose();
    navBarModel2.dispose();
  }
}
