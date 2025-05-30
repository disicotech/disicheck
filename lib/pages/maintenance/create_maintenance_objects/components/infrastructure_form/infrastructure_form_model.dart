<<<<<<< HEAD
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'infrastructure_form_widget.dart' show InfrastructureFormWidget;
import 'package:flutter/material.dart';
=======
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'infrastructure_form_widget.dart' show InfrastructureFormWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
>>>>>>> master

class InfrastructureFormModel
    extends FlutterFlowModel<InfrastructureFormWidget> {
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
  // State field(s) for infraIdentifierCode widget.
  FocusNode? infraIdentifierCodeFocusNode;
  TextEditingController? infraIdentifierCodeTextController;
  String? Function(BuildContext, String?)?
      infraIdentifierCodeTextControllerValidator;
  // State field(s) for infraSerialCode widget.
  FocusNode? infraSerialCodeFocusNode;
  TextEditingController? infraSerialCodeTextController;
  String? Function(BuildContext, String?)?
      infraSerialCodeTextControllerValidator;
  // State field(s) for infraLocation widget.
  FocusNode? infraLocationFocusNode;
  TextEditingController? infraLocationTextController;
  String? Function(BuildContext, String?)? infraLocationTextControllerValidator;
  // State field(s) for infraTotalBuildings widget.
  FocusNode? infraTotalBuildingsFocusNode;
  TextEditingController? infraTotalBuildingsTextController;
  String? Function(BuildContext, String?)?
      infraTotalBuildingsTextControllerValidator;
  // State field(s) for infraNumberOfFloorsAndTypeOfRoof widget.
  FocusNode? infraNumberOfFloorsAndTypeOfRoofFocusNode;
  TextEditingController? infraNumberOfFloorsAndTypeOfRoofTextController;
  String? Function(BuildContext, String?)?
      infraNumberOfFloorsAndTypeOfRoofTextControllerValidator;
  // State field(s) for ownProperty widget.
  bool? ownPropertyValue;
  // State field(s) for rentedProperty widget.
  bool? rentedPropertyValue;
  // State field(s) for infraYearBuilt widget.
  FocusNode? infraYearBuiltFocusNode;
  TextEditingController? infraYearBuiltTextController;
  String? Function(BuildContext, String?)?
      infraYearBuiltTextControllerValidator;
  // State field(s) for infraUse widget.
  FocusNode? infraUseFocusNode;
  TextEditingController? infraUseTextController;
  String? Function(BuildContext, String?)? infraUseTextControllerValidator;
  // State field(s) for infraAvailableAreas widget.
  FocusNode? infraAvailableAreasFocusNode;
  TextEditingController? infraAvailableAreasTextController;
  String? Function(BuildContext, String?)?
      infraAvailableAreasTextControllerValidator;
  // State field(s) for infraConditions widget.
  FocusNode? infraConditionsFocusNode;
  TextEditingController? infraConditionsTextController;
  String? Function(BuildContext, String?)?
      infraConditionsTextControllerValidator;
  // State field(s) for infraStructureType widget.
  String? infraStructureTypeValue;
  FormFieldController<String>? infraStructureTypeValueController;
  // State field(s) for infraRecomCleaning widget.
  FocusNode? infraRecomCleaningFocusNode;
  TextEditingController? infraRecomCleaningTextController;
  String? Function(BuildContext, String?)?
      infraRecomCleaningTextControllerValidator;
  // State field(s) for infraRecomMaintt widget.
  FocusNode? infraRecomMainttFocusNode;
  TextEditingController? infraRecomMainttTextController;
  String? Function(BuildContext, String?)?
      infraRecomMainttTextControllerValidator;
  // State field(s) for infraRecomSecurity widget.
  FocusNode? infraRecomSecurityFocusNode;
  TextEditingController? infraRecomSecurityTextController;
  String? Function(BuildContext, String?)?
      infraRecomSecurityTextControllerValidator;
  // State field(s) for infraObservations widget.
  FocusNode? infraObservationsFocusNode;
  TextEditingController? infraObservationsTextController;
  String? Function(BuildContext, String?)?
      infraObservationsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    infraIdentifierCodeFocusNode?.dispose();
    infraIdentifierCodeTextController?.dispose();

    infraSerialCodeFocusNode?.dispose();
    infraSerialCodeTextController?.dispose();

    infraLocationFocusNode?.dispose();
    infraLocationTextController?.dispose();

    infraTotalBuildingsFocusNode?.dispose();
    infraTotalBuildingsTextController?.dispose();

    infraNumberOfFloorsAndTypeOfRoofFocusNode?.dispose();
    infraNumberOfFloorsAndTypeOfRoofTextController?.dispose();

    infraYearBuiltFocusNode?.dispose();
    infraYearBuiltTextController?.dispose();

    infraUseFocusNode?.dispose();
    infraUseTextController?.dispose();

    infraAvailableAreasFocusNode?.dispose();
    infraAvailableAreasTextController?.dispose();

    infraConditionsFocusNode?.dispose();
    infraConditionsTextController?.dispose();

    infraRecomCleaningFocusNode?.dispose();
    infraRecomCleaningTextController?.dispose();

    infraRecomMainttFocusNode?.dispose();
    infraRecomMainttTextController?.dispose();

    infraRecomSecurityFocusNode?.dispose();
    infraRecomSecurityTextController?.dispose();

    infraObservationsFocusNode?.dispose();
    infraObservationsTextController?.dispose();
  }

  /// Action blocks.
  Future formUpdate(BuildContext context) async {}
}
