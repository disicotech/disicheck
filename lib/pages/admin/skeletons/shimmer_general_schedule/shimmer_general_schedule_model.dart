<<<<<<< HEAD
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shimmer_general_schedule_widget.dart' show ShimmerGeneralScheduleWidget;
import 'package:flutter/material.dart';
=======
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'shimmer_general_schedule_widget.dart' show ShimmerGeneralScheduleWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
>>>>>>> master

class ShimmerGeneralScheduleModel
    extends FlutterFlowModel<ShimmerGeneralScheduleWidget> {
  ///  Local state fields for this component.

  List<String> rowsNumber = [
    'Hello World 1',
    'Hello World 2',
    'Hello World 3',
    'Hello World 4'
  ];
  void addToRowsNumber(String item) => rowsNumber.add(item);
  void removeFromRowsNumber(String item) => rowsNumber.remove(item);
  void removeAtIndexFromRowsNumber(int index) => rowsNumber.removeAt(index);
  void insertAtIndexInRowsNumber(int index, String item) =>
      rowsNumber.insert(index, item);
  void updateRowsNumberAtIndex(int index, Function(String) updateFn) =>
      rowsNumber[index] = updateFn(rowsNumber[index]);

  List<String> listItems = [
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World'
  ];
  void addToListItems(String item) => listItems.add(item);
  void removeFromListItems(String item) => listItems.remove(item);
  void removeAtIndexFromListItems(int index) => listItems.removeAt(index);
  void insertAtIndexInListItems(int index, String item) =>
      listItems.insert(index, item);
  void updateListItemsAtIndex(int index, Function(String) updateFn) =>
      listItems[index] = updateFn(listItems[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<String>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
