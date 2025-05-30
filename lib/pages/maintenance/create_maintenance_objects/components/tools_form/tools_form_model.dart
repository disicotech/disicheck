<<<<<<< HEAD
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tools_form_widget.dart' show ToolsFormWidget;
import 'package:flutter/material.dart';
=======
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'tools_form_widget.dart' show ToolsFormWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
>>>>>>> master

class ToolsFormModel extends FlutterFlowModel<ToolsFormWidget> {
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
  // State field(s) for toolsBoxLocation widget.
  FocusNode? toolsBoxLocationFocusNode;
  TextEditingController? toolsBoxLocationTextController;
  String? Function(BuildContext, String?)?
      toolsBoxLocationTextControllerValidator;
  // State field(s) for toolsIdentifierCode widget.
  FocusNode? toolsIdentifierCodeFocusNode;
  TextEditingController? toolsIdentifierCodeTextController;
  String? Function(BuildContext, String?)?
      toolsIdentifierCodeTextControllerValidator;
  // State field(s) for toolsSerialCode widget.
  FocusNode? toolsSerialCodeFocusNode;
  TextEditingController? toolsSerialCodeTextController;
  String? Function(BuildContext, String?)?
      toolsSerialCodeTextControllerValidator;
  // State field(s) for toolsBoxNumberOfTools widget.
  FocusNode? toolsBoxNumberOfToolsFocusNode;
  TextEditingController? toolsBoxNumberOfToolsTextController;
  String? Function(BuildContext, String?)?
      toolsBoxNumberOfToolsTextControllerValidator;
  // State field(s) for toolsBrand widget.
  FocusNode? toolsBrandFocusNode;
  TextEditingController? toolsBrandTextController;
  String? Function(BuildContext, String?)? toolsBrandTextControllerValidator;
  // State field(s) for toolsBoxElaborationYear widget.
  FocusNode? toolsBoxElaborationYearFocusNode;
  TextEditingController? toolsBoxElaborationYearTextController;
  String? Function(BuildContext, String?)?
      toolsBoxElaborationYearTextControllerValidator;
  // State field(s) for toolsBoxType widget.
  String? toolsBoxTypeValue;
  FormFieldController<String>? toolsBoxTypeValueController;
  // State field(s) for toolsBoxCASource widget.
  FocusNode? toolsBoxCASourceFocusNode;
  TextEditingController? toolsBoxCASourceTextController;
  String? Function(BuildContext, String?)?
      toolsBoxCASourceTextControllerValidator;
  // State field(s) for toolsBoxVoltage widget.
  FocusNode? toolsBoxVoltageFocusNode;
  TextEditingController? toolsBoxVoltageTextController;
  String? Function(BuildContext, String?)?
      toolsBoxVoltageTextControllerValidator;
  // State field(s) for toolsBoxStreamA widget.
  FocusNode? toolsBoxStreamAFocusNode;
  TextEditingController? toolsBoxStreamATextController;
  String? Function(BuildContext, String?)?
      toolsBoxStreamATextControllerValidator;
  // State field(s) for toolsBoxWeight widget.
  FocusNode? toolsBoxWeightFocusNode;
  TextEditingController? toolsBoxWeightTextController;
  String? Function(BuildContext, String?)?
      toolsBoxWeightTextControllerValidator;
  // State field(s) for toolsBoxNumberOfPhases widget.
  FocusNode? toolsBoxNumberOfPhasesFocusNode;
  TextEditingController? toolsBoxNumberOfPhasesTextController;
  String? Function(BuildContext, String?)?
      toolsBoxNumberOfPhasesTextControllerValidator;
  // State field(s) for toolsBoxPower widget.
  FocusNode? toolsBoxPowerFocusNode;
  TextEditingController? toolsBoxPowerTextController;
  String? Function(BuildContext, String?)? toolsBoxPowerTextControllerValidator;
  // State field(s) for toolsBoxTemperature widget.
  FocusNode? toolsBoxTemperatureFocusNode;
  TextEditingController? toolsBoxTemperatureTextController;
  String? Function(BuildContext, String?)?
      toolsBoxTemperatureTextControllerValidator;
  // State field(s) for toolsBoxSpeed widget.
  FocusNode? toolsBoxSpeedFocusNode;
  TextEditingController? toolsBoxSpeedTextController;
  String? Function(BuildContext, String?)? toolsBoxSpeedTextControllerValidator;
  // State field(s) for infraRecomMaintt widget.
  FocusNode? infraRecomMainttFocusNode;
  TextEditingController? infraRecomMainttTextController;
  String? Function(BuildContext, String?)?
      infraRecomMainttTextControllerValidator;
  // State field(s) for toolsBoxOtherConditions widget.
  FocusNode? toolsBoxOtherConditionsFocusNode;
  TextEditingController? toolsBoxOtherConditionsTextController;
  String? Function(BuildContext, String?)?
      toolsBoxOtherConditionsTextControllerValidator;
  // State field(s) for toolsBoxSecurity widget.
  FocusNode? toolsBoxSecurityFocusNode;
  TextEditingController? toolsBoxSecurityTextController;
  String? Function(BuildContext, String?)?
      toolsBoxSecurityTextControllerValidator;
  // State field(s) for toolsBoxLubrication widget.
  FocusNode? toolsBoxLubricationFocusNode;
  TextEditingController? toolsBoxLubricationTextController;
  String? Function(BuildContext, String?)?
      toolsBoxLubricationTextControllerValidator;
  // State field(s) for toolsBoxRecomCleaning widget.
  FocusNode? toolsBoxRecomCleaningFocusNode;
  TextEditingController? toolsBoxRecomCleaningTextController;
  String? Function(BuildContext, String?)?
      toolsBoxRecomCleaningTextControllerValidator;
  // State field(s) for toolsBoxRecomPreventiveMtto widget.
  FocusNode? toolsBoxRecomPreventiveMttoFocusNode;
  TextEditingController? toolsBoxRecomPreventiveMttoTextController;
  String? Function(BuildContext, String?)?
      toolsBoxRecomPreventiveMttoTextControllerValidator;
  // State field(s) for toolsBoxSecurityRecoms widget.
  FocusNode? toolsBoxSecurityRecomsFocusNode;
  TextEditingController? toolsBoxSecurityRecomsTextController;
  String? Function(BuildContext, String?)?
      toolsBoxSecurityRecomsTextControllerValidator;
  // State field(s) for toolsBoxObservations widget.
  FocusNode? toolsBoxObservationsFocusNode;
  TextEditingController? toolsBoxObservationsTextController;
  String? Function(BuildContext, String?)?
      toolsBoxObservationsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    toolsBoxLocationFocusNode?.dispose();
    toolsBoxLocationTextController?.dispose();

    toolsIdentifierCodeFocusNode?.dispose();
    toolsIdentifierCodeTextController?.dispose();

    toolsSerialCodeFocusNode?.dispose();
    toolsSerialCodeTextController?.dispose();

    toolsBoxNumberOfToolsFocusNode?.dispose();
    toolsBoxNumberOfToolsTextController?.dispose();

    toolsBrandFocusNode?.dispose();
    toolsBrandTextController?.dispose();

    toolsBoxElaborationYearFocusNode?.dispose();
    toolsBoxElaborationYearTextController?.dispose();

    toolsBoxCASourceFocusNode?.dispose();
    toolsBoxCASourceTextController?.dispose();

    toolsBoxVoltageFocusNode?.dispose();
    toolsBoxVoltageTextController?.dispose();

    toolsBoxStreamAFocusNode?.dispose();
    toolsBoxStreamATextController?.dispose();

    toolsBoxWeightFocusNode?.dispose();
    toolsBoxWeightTextController?.dispose();

    toolsBoxNumberOfPhasesFocusNode?.dispose();
    toolsBoxNumberOfPhasesTextController?.dispose();

    toolsBoxPowerFocusNode?.dispose();
    toolsBoxPowerTextController?.dispose();

    toolsBoxTemperatureFocusNode?.dispose();
    toolsBoxTemperatureTextController?.dispose();

    toolsBoxSpeedFocusNode?.dispose();
    toolsBoxSpeedTextController?.dispose();

    infraRecomMainttFocusNode?.dispose();
    infraRecomMainttTextController?.dispose();

    toolsBoxOtherConditionsFocusNode?.dispose();
    toolsBoxOtherConditionsTextController?.dispose();

    toolsBoxSecurityFocusNode?.dispose();
    toolsBoxSecurityTextController?.dispose();

    toolsBoxLubricationFocusNode?.dispose();
    toolsBoxLubricationTextController?.dispose();

    toolsBoxRecomCleaningFocusNode?.dispose();
    toolsBoxRecomCleaningTextController?.dispose();

    toolsBoxRecomPreventiveMttoFocusNode?.dispose();
    toolsBoxRecomPreventiveMttoTextController?.dispose();

    toolsBoxSecurityRecomsFocusNode?.dispose();
    toolsBoxSecurityRecomsTextController?.dispose();

    toolsBoxObservationsFocusNode?.dispose();
    toolsBoxObservationsTextController?.dispose();
  }

  /// Action blocks.
  Future formUpdate(BuildContext context) async {}
}
