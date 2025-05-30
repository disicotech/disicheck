import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'filter_by_category_widget.dart' show FilterByCategoryWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterByCategoryModel extends FlutterFlowModel<FilterByCategoryWidget> {
  ///  Local state fields for this component.

  int? itemInlist;

  ///  State fields for stateful widgets in this component.

  // State field(s) for OMCategoriesOptions widget.
  FormFieldController<List<String>>? oMCategoriesOptionsValueController;
  List<String>? get oMCategoriesOptionsValues =>
      oMCategoriesOptionsValueController?.value;
  set oMCategoriesOptionsValues(List<String>? v) =>
      oMCategoriesOptionsValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
