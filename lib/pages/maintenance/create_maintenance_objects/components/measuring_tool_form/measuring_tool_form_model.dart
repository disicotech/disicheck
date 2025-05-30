<<<<<<< HEAD
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'measuring_tool_form_widget.dart' show MeasuringToolFormWidget;
import 'package:flutter/material.dart';
=======
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'measuring_tool_form_widget.dart' show MeasuringToolFormWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
>>>>>>> master

class MeasuringToolFormModel extends FlutterFlowModel<MeasuringToolFormWidget> {
  ///  Local state fields for this component.

  int? propertyAdministration;

  List<String> structureType = [
    'Acero',
    'Hormigón',
    'Ladrillo',
    'Piedra',
    'Madera',
    'Adobe',
    'Prefabricada de estructura Metálica',
    'Prefabricada de estructura de Madera',
    'Prefabricada de estructura de fibrocemento'
  ];
  void addToStructureType(String item) => structureType.add(item);
  void removeFromStructureType(String item) => structureType.remove(item);
  void removeAtIndexFromStructureType(int index) =>
      structureType.removeAt(index);
  void insertAtIndexInStructureType(int index, String item) =>
      structureType.insert(index, item);
  void updateStructureTypeAtIndex(int index, Function(String) updateFn) =>
      structureType[index] = updateFn(structureType[index]);

  dynamic formMetadata;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for measuringToolLocation widget.
  FocusNode? measuringToolLocationFocusNode;
  TextEditingController? measuringToolLocationTextController;
  String? Function(BuildContext, String?)?
      measuringToolLocationTextControllerValidator;
  // State field(s) for measuringToolCode widget.
  FocusNode? measuringToolCodeFocusNode;
  TextEditingController? measuringToolCodeTextController;
  String? Function(BuildContext, String?)?
      measuringToolCodeTextControllerValidator;
  // State field(s) for measuringToolSerial widget.
  FocusNode? measuringToolSerialFocusNode;
  TextEditingController? measuringToolSerialTextController;
  String? Function(BuildContext, String?)?
      measuringToolSerialTextControllerValidator;
  // State field(s) for measuringToolQty widget.
  FocusNode? measuringToolQtyFocusNode;
  TextEditingController? measuringToolQtyTextController;
  String? Function(BuildContext, String?)?
      measuringToolQtyTextControllerValidator;
  // State field(s) for measuringToolBrand widget.
  FocusNode? measuringToolBrandFocusNode;
  TextEditingController? measuringToolBrandTextController;
  String? Function(BuildContext, String?)?
      measuringToolBrandTextControllerValidator;
  // State field(s) for measuringToolElaborationYear widget.
  FocusNode? measuringToolElaborationYearFocusNode;
  TextEditingController? measuringToolElaborationYearTextController;
  String? Function(BuildContext, String?)?
      measuringToolElaborationYearTextControllerValidator;
  // State field(s) for measuringToolMeasuredVariable widget.
  FocusNode? measuringToolMeasuredVariableFocusNode;
  TextEditingController? measuringToolMeasuredVariableTextController;
  String? Function(BuildContext, String?)?
      measuringToolMeasuredVariableTextControllerValidator;
  // State field(s) for measuringToolMeasuringRange widget.
  FocusNode? measuringToolMeasuringRangeFocusNode;
  TextEditingController? measuringToolMeasuringRangeTextController;
  String? Function(BuildContext, String?)?
      measuringToolMeasuringRangeTextControllerValidator;
  // State field(s) for measuringToolRequiredPrecision widget.
  FocusNode? measuringToolRequiredPrecisionFocusNode;
  TextEditingController? measuringToolRequiredPrecisionTextController;
  String? Function(BuildContext, String?)?
      measuringToolRequiredPrecisionTextControllerValidator;
  // State field(s) for MeasuringToolControlTypeToImplementCalibration widget.
  bool? measuringToolControlTypeToImplementCalibrationValue;
  // State field(s) for MeasuringToolControlTypeToImplementVerification widget.
  bool? measuringToolControlTypeToImplementVerificationValue;
  // State field(s) for measuringToolControlFrecuency widget.
  String? measuringToolControlFrecuencyValue;
  FormFieldController<String>? measuringToolControlFrecuencyValueController;
  // State field(s) for measuringToolOtherConditions widget.
  FocusNode? measuringToolOtherConditionsFocusNode;
  TextEditingController? measuringToolOtherConditionsTextController;
  String? Function(BuildContext, String?)?
      measuringToolOtherConditionsTextControllerValidator;
  // State field(s) for measuringToolRecomCleaning widget.
  FocusNode? measuringToolRecomCleaningFocusNode;
  TextEditingController? measuringToolRecomCleaningTextController;
  String? Function(BuildContext, String?)?
      measuringToolRecomCleaningTextControllerValidator;
  // State field(s) for measuringToolPreventiveMtto widget.
  FocusNode? measuringToolPreventiveMttoFocusNode;
  TextEditingController? measuringToolPreventiveMttoTextController;
  String? Function(BuildContext, String?)?
      measuringToolPreventiveMttoTextControllerValidator;
  // State field(s) for measuringToolSecurityRecoms widget.
  FocusNode? measuringToolSecurityRecomsFocusNode;
  TextEditingController? measuringToolSecurityRecomsTextController;
  String? Function(BuildContext, String?)?
      measuringToolSecurityRecomsTextControllerValidator;
  // State field(s) for measuringToolObservations widget.
  FocusNode? measuringToolObservationsFocusNode;
  TextEditingController? measuringToolObservationsTextController;
  String? Function(BuildContext, String?)?
      measuringToolObservationsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    measuringToolLocationFocusNode?.dispose();
    measuringToolLocationTextController?.dispose();

    measuringToolCodeFocusNode?.dispose();
    measuringToolCodeTextController?.dispose();

    measuringToolSerialFocusNode?.dispose();
    measuringToolSerialTextController?.dispose();

    measuringToolQtyFocusNode?.dispose();
    measuringToolQtyTextController?.dispose();

    measuringToolBrandFocusNode?.dispose();
    measuringToolBrandTextController?.dispose();

    measuringToolElaborationYearFocusNode?.dispose();
    measuringToolElaborationYearTextController?.dispose();

    measuringToolMeasuredVariableFocusNode?.dispose();
    measuringToolMeasuredVariableTextController?.dispose();

    measuringToolMeasuringRangeFocusNode?.dispose();
    measuringToolMeasuringRangeTextController?.dispose();

    measuringToolRequiredPrecisionFocusNode?.dispose();
    measuringToolRequiredPrecisionTextController?.dispose();

    measuringToolOtherConditionsFocusNode?.dispose();
    measuringToolOtherConditionsTextController?.dispose();

    measuringToolRecomCleaningFocusNode?.dispose();
    measuringToolRecomCleaningTextController?.dispose();

    measuringToolPreventiveMttoFocusNode?.dispose();
    measuringToolPreventiveMttoTextController?.dispose();

    measuringToolSecurityRecomsFocusNode?.dispose();
    measuringToolSecurityRecomsTextController?.dispose();

    measuringToolObservationsFocusNode?.dispose();
    measuringToolObservationsTextController?.dispose();
  }

  /// Action blocks.
  Future formUpdate(BuildContext context) async {}
}
