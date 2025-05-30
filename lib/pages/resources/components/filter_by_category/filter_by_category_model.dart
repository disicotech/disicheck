import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_by_category_widget.dart' show FilterByCategoryWidget;
import 'package:flutter/material.dart';

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
