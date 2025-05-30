import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/admin/components/assign_project_to_a_user/assign_project_to_a_user_widget.dart';
import '/index.dart';
import 'asset_profile_edit_widget.dart' show AssetProfileEditWidget;
import 'package:flutter/material.dart';

class AssetProfileEditModel extends FlutterFlowModel<AssetProfileEditWidget> {
  ///  Local state fields for this page.

  String? selectedProjectToTransfer;

  bool registerObjectTransfer = false;

  bool returnedObject = false;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadForAssetEdit = false;
  FFUploadedFile uploadedLocalFile_uploadForAssetEdit =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for modifiedName widget.
  FocusNode? modifiedNameFocusNode;
  TextEditingController? modifiedNameTextController;
  String? Function(BuildContext, String?)? modifiedNameTextControllerValidator;
  // State field(s) for modifiedCategory widget.
  String? modifiedCategoryValue;
  FormFieldController<String>? modifiedCategoryValueController;
  // State field(s) for modifiedCriticalTaskPerformed widget.
  String? modifiedCriticalTaskPerformedValue;
  FormFieldController<String>? modifiedCriticalTaskPerformedValueController;
  // State field(s) for modifiedFinalStatus widget.
  String? modifiedFinalStatusValue;
  FormFieldController<String>? modifiedFinalStatusValueController;
  // State field(s) for modifiedMttoFrecuency widget.
  String? modifiedMttoFrecuencyValue;
  FormFieldController<String>? modifiedMttoFrecuencyValueController;
  // State field(s) for modifiedCriticallityLevel widget.
  String? modifiedCriticallityLevelValue;
  FormFieldController<String>? modifiedCriticallityLevelValueController;
  // State field(s) for modifiedServiceLife widget.
  FocusNode? modifiedServiceLifeFocusNode;
  TextEditingController? modifiedServiceLifeTextController;
  String? Function(BuildContext, String?)?
      modifiedServiceLifeTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for objectReturnObservation widget.
  FocusNode? objectReturnObservationFocusNode;
  TextEditingController? objectReturnObservationTextController;
  String? Function(BuildContext, String?)?
      objectReturnObservationTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // Model for modifiedAssignedProjectToUser.
  late AssignProjectToAUserModel modifiedAssignedProjectToUserModel;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<MaintenanceObjectsRow>? modifyMaintenanceObject;
  // Stores action output result for [Backend Call - API (UPLOAD TO SUPABASE STORAGE)] action in Button widget.
  ApiCallResponse? uploadAPICall;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ProjectsRow>? queryProjectTransfer;

  @override
  void initState(BuildContext context) {
    modifiedAssignedProjectToUserModel =
        createModel(context, () => AssignProjectToAUserModel());
  }

  @override
  void dispose() {
    modifiedNameFocusNode?.dispose();
    modifiedNameTextController?.dispose();

    modifiedServiceLifeFocusNode?.dispose();
    modifiedServiceLifeTextController?.dispose();

    objectReturnObservationFocusNode?.dispose();
    objectReturnObservationTextController?.dispose();

    modifiedAssignedProjectToUserModel.dispose();
  }
}
