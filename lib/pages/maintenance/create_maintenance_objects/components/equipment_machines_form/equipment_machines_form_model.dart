import '/flutter_flow/flutter_flow_util.dart';
<<<<<<< HEAD
import 'equipment_machines_form_widget.dart' show EquipmentMachinesFormWidget;
import 'package:flutter/material.dart';
=======
import 'dart:ui';
import 'equipment_machines_form_widget.dart' show EquipmentMachinesFormWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
>>>>>>> master

class EquipmentMachinesFormModel
    extends FlutterFlowModel<EquipmentMachinesFormWidget> {
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
  // State field(s) for equipmentMachineIdentifierCode widget.
  FocusNode? equipmentMachineIdentifierCodeFocusNode;
  TextEditingController? equipmentMachineIdentifierCodeTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineIdentifierCodeTextControllerValidator;
  // State field(s) for equipmentMachineSerialCode widget.
  FocusNode? equipmentMachineSerialCodeFocusNode;
  TextEditingController? equipmentMachineSerialCodeTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineSerialCodeTextControllerValidator;
  // State field(s) for EquipmentMachineLocation widget.
  FocusNode? equipmentMachineLocationFocusNode;
  TextEditingController? equipmentMachineLocationTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineLocationTextControllerValidator;
  // State field(s) for equipmentMachineNumber widget.
  FocusNode? equipmentMachineNumberFocusNode;
  TextEditingController? equipmentMachineNumberTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineNumberTextControllerValidator;
  // State field(s) for equipmentMachineBrand widget.
  FocusNode? equipmentMachineBrandFocusNode;
  TextEditingController? equipmentMachineBrandTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineBrandTextControllerValidator;
  // State field(s) for equipmentMachineYearBuilt widget.
  FocusNode? equipmentMachineYearBuiltFocusNode;
  TextEditingController? equipmentMachineYearBuiltTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineYearBuiltTextControllerValidator;
  // State field(s) for equipmentMachineFunction widget.
  FocusNode? equipmentMachineFunctionFocusNode;
  TextEditingController? equipmentMachineFunctionTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineFunctionTextControllerValidator;
  // State field(s) for equipmentMachineCASource widget.
  FocusNode? equipmentMachineCASourceFocusNode;
  TextEditingController? equipmentMachineCASourceTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineCASourceTextControllerValidator;
  // State field(s) for equipmentMachineNumberMotorUnits widget.
  FocusNode? equipmentMachineNumberMotorUnitsFocusNode;
  TextEditingController? equipmentMachineNumberMotorUnitsTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineNumberMotorUnitsTextControllerValidator;
  // State field(s) for equipmentMachineNumberOperationCapacity widget.
  FocusNode? equipmentMachineNumberOperationCapacityFocusNode;
  TextEditingController? equipmentMachineNumberOperationCapacityTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineNumberOperationCapacityTextControllerValidator;
  // State field(s) for equipmentMachineNumberWeight widget.
  FocusNode? equipmentMachineNumberWeightFocusNode;
  TextEditingController? equipmentMachineNumberWeightTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineNumberWeightTextControllerValidator;
  // State field(s) for equipmentMachineNumberOfPhases widget.
  FocusNode? equipmentMachineNumberOfPhasesFocusNode;
  TextEditingController? equipmentMachineNumberOfPhasesTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineNumberOfPhasesTextControllerValidator;
  // State field(s) for equipmentMachineUsedVoltage widget.
  FocusNode? equipmentMachineUsedVoltageFocusNode;
  TextEditingController? equipmentMachineUsedVoltageTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineUsedVoltageTextControllerValidator;
  // State field(s) for equipmentMachineTemperature widget.
  FocusNode? equipmentMachineTemperatureFocusNode;
  TextEditingController? equipmentMachineTemperatureTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineTemperatureTextControllerValidator;
  // State field(s) for equipmentMachineCAUsed widget.
  FocusNode? equipmentMachineCAUsedFocusNode;
  TextEditingController? equipmentMachineCAUsedTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineCAUsedTextControllerValidator;
  // State field(s) for equipmentMachinePression widget.
  FocusNode? equipmentMachinePressionFocusNode;
  TextEditingController? equipmentMachinePressionTextController;
  String? Function(BuildContext, String?)?
      equipmentMachinePressionTextControllerValidator;
  // State field(s) for equipmentMachineOtherConditions widget.
  FocusNode? equipmentMachineOtherConditionsFocusNode;
  TextEditingController? equipmentMachineOtherConditionsTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineOtherConditionsTextControllerValidator;
  // State field(s) for equipmentMachineOtherAccesories widget.
  FocusNode? equipmentMachineOtherAccesoriesFocusNode;
  TextEditingController? equipmentMachineOtherAccesoriesTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineOtherAccesoriesTextControllerValidator;
  // State field(s) for equipmentMachineLubrication widget.
  FocusNode? equipmentMachineLubricationFocusNode;
  TextEditingController? equipmentMachineLubricationTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineLubricationTextControllerValidator;
  // State field(s) for equipmentMachineRecomPreventiveMtto widget.
  FocusNode? equipmentMachineRecomPreventiveMttoFocusNode;
  TextEditingController? equipmentMachineRecomPreventiveMttoTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineRecomPreventiveMttoTextControllerValidator;
  // State field(s) for equipmentMachineSecurityRecoms widget.
  FocusNode? equipmentMachineSecurityRecomsFocusNode;
  TextEditingController? equipmentMachineSecurityRecomsTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineSecurityRecomsTextControllerValidator;
  // State field(s) for equipmentMachineObservations widget.
  FocusNode? equipmentMachineObservationsFocusNode;
  TextEditingController? equipmentMachineObservationsTextController;
  String? Function(BuildContext, String?)?
      equipmentMachineObservationsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    equipmentMachineIdentifierCodeFocusNode?.dispose();
    equipmentMachineIdentifierCodeTextController?.dispose();

    equipmentMachineSerialCodeFocusNode?.dispose();
    equipmentMachineSerialCodeTextController?.dispose();

    equipmentMachineLocationFocusNode?.dispose();
    equipmentMachineLocationTextController?.dispose();

    equipmentMachineNumberFocusNode?.dispose();
    equipmentMachineNumberTextController?.dispose();

    equipmentMachineBrandFocusNode?.dispose();
    equipmentMachineBrandTextController?.dispose();

    equipmentMachineYearBuiltFocusNode?.dispose();
    equipmentMachineYearBuiltTextController?.dispose();

    equipmentMachineFunctionFocusNode?.dispose();
    equipmentMachineFunctionTextController?.dispose();

    equipmentMachineCASourceFocusNode?.dispose();
    equipmentMachineCASourceTextController?.dispose();

    equipmentMachineNumberMotorUnitsFocusNode?.dispose();
    equipmentMachineNumberMotorUnitsTextController?.dispose();

    equipmentMachineNumberOperationCapacityFocusNode?.dispose();
    equipmentMachineNumberOperationCapacityTextController?.dispose();

    equipmentMachineNumberWeightFocusNode?.dispose();
    equipmentMachineNumberWeightTextController?.dispose();

    equipmentMachineNumberOfPhasesFocusNode?.dispose();
    equipmentMachineNumberOfPhasesTextController?.dispose();

    equipmentMachineUsedVoltageFocusNode?.dispose();
    equipmentMachineUsedVoltageTextController?.dispose();

    equipmentMachineTemperatureFocusNode?.dispose();
    equipmentMachineTemperatureTextController?.dispose();

    equipmentMachineCAUsedFocusNode?.dispose();
    equipmentMachineCAUsedTextController?.dispose();

    equipmentMachinePressionFocusNode?.dispose();
    equipmentMachinePressionTextController?.dispose();

    equipmentMachineOtherConditionsFocusNode?.dispose();
    equipmentMachineOtherConditionsTextController?.dispose();

    equipmentMachineOtherAccesoriesFocusNode?.dispose();
    equipmentMachineOtherAccesoriesTextController?.dispose();

    equipmentMachineLubricationFocusNode?.dispose();
    equipmentMachineLubricationTextController?.dispose();

    equipmentMachineRecomPreventiveMttoFocusNode?.dispose();
    equipmentMachineRecomPreventiveMttoTextController?.dispose();

    equipmentMachineSecurityRecomsFocusNode?.dispose();
    equipmentMachineSecurityRecomsTextController?.dispose();

    equipmentMachineObservationsFocusNode?.dispose();
    equipmentMachineObservationsTextController?.dispose();
  }

  /// Action blocks.
  Future formUpdate(BuildContext context) async {}
}
