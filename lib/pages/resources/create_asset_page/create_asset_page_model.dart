import '/components/commons/principal_action_button_orange/principal_action_button_orange_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/maintenance/create_maintenance_objects/components/equipment_machines_form/equipment_machines_form_widget.dart';
import '/pages/maintenance/create_maintenance_objects/components/infrastructure_form/infrastructure_form_widget.dart';
import '/pages/maintenance/create_maintenance_objects/components/input_element/input_element_widget.dart';
import '/pages/maintenance/create_maintenance_objects/components/measuring_tool_form/measuring_tool_form_widget.dart';
import '/pages/maintenance/create_maintenance_objects/components/tools_form/tools_form_widget.dart';
import '/index.dart';
import 'create_asset_page_widget.dart' show CreateAssetPageWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAssetPageModel extends FlutterFlowModel<CreateAssetPageWidget> {
  ///  Local state fields for this page.

  String? moSelectedCategory;

  String? uploadedProfilePhoto;

  List<String> controlTypeToImplement = [];
  void addToControlTypeToImplement(String item) =>
      controlTypeToImplement.add(item);
  void removeFromControlTypeToImplement(String item) =>
      controlTypeToImplement.remove(item);
  void removeAtIndexFromControlTypeToImplement(int index) =>
      controlTypeToImplement.removeAt(index);
  void insertAtIndexInControlTypeToImplement(int index, String item) =>
      controlTypeToImplement.insert(index, item);
  void updateControlTypeToImplementAtIndex(
          int index, Function(String) updateFn) =>
      controlTypeToImplement[index] = updateFn(controlTypeToImplement[index]);

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadedLocalPhotoFile = false;
  FFUploadedFile uploadedLocalFile_uploadedLocalPhotoFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadedLocalPhotoFile = '';

  // Model for MoName.
  late InputElementModel moNameModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for toolsGroup widget.
  FocusNode? toolsGroupFocusNode;
  TextEditingController? toolsGroupTextController;
  String? Function(BuildContext, String?)? toolsGroupTextControllerValidator;
  // State field(s) for registrantDni widget.
  FocusNode? registrantDniFocusNode;
  TextEditingController? registrantDniTextController;
  String? Function(BuildContext, String?)? registrantDniTextControllerValidator;
  // State field(s) for CategoryDropdown widget.
  String? categoryDropdownValue;
  FormFieldController<String>? categoryDropdownValueController;
  // State field(s) for projectAssigned widget.
  String? projectAssignedValue;
  FormFieldController<String>? projectAssignedValueController;
  // State field(s) for criticalityLevel widget.
  FocusNode? criticalityLevelFocusNode;
  TextEditingController? criticalityLevelTextController;
  String? Function(BuildContext, String?)?
      criticalityLevelTextControllerValidator;
  // State field(s) for serviceLife widget.
  FocusNode? serviceLifeFocusNode;
  TextEditingController? serviceLifeTextController;
  String? Function(BuildContext, String?)? serviceLifeTextControllerValidator;
  // State field(s) for criticalTaskPerformed widget.
  String? criticalTaskPerformedValue;
  FormFieldController<String>? criticalTaskPerformedValueController;
  DateTime? datePicked;
  // Model for InfrastructureForm component.
  late InfrastructureFormModel infrastructureFormModel;
  // Model for ToolsForm component.
  late ToolsFormModel toolsFormModel;
  // Model for EquipmentMachinesForm component.
  late EquipmentMachinesFormModel equipmentMachinesFormModel;
  // Model for MeasuringToolForm component.
  late MeasuringToolFormModel measuringToolFormModel;
  // Model for PrincipalActionButtonOrange component.
  late PrincipalActionButtonOrangeModel principalActionButtonOrangeModel;

  @override
  void initState(BuildContext context) {
    moNameModel = createModel(context, () => InputElementModel());
    infrastructureFormModel =
        createModel(context, () => InfrastructureFormModel());
    toolsFormModel = createModel(context, () => ToolsFormModel());
    equipmentMachinesFormModel =
        createModel(context, () => EquipmentMachinesFormModel());
    measuringToolFormModel =
        createModel(context, () => MeasuringToolFormModel());
    principalActionButtonOrangeModel =
        createModel(context, () => PrincipalActionButtonOrangeModel());
  }

  @override
  void dispose() {
    moNameModel.dispose();
    toolsGroupFocusNode?.dispose();
    toolsGroupTextController?.dispose();

    registrantDniFocusNode?.dispose();
    registrantDniTextController?.dispose();

    criticalityLevelFocusNode?.dispose();
    criticalityLevelTextController?.dispose();

    serviceLifeFocusNode?.dispose();
    serviceLifeTextController?.dispose();

    infrastructureFormModel.dispose();
    toolsFormModel.dispose();
    equipmentMachinesFormModel.dispose();
    measuringToolFormModel.dispose();
    principalActionButtonOrangeModel.dispose();
  }
}
