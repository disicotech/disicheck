<<<<<<< HEAD
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/maintenance/components/activities_input/activities_input_widget.dart';
import '/flutter_flow/request_manager.dart';

import 'mtto_detail_widget.dart' show MttoDetailWidget;
import 'package:flutter/material.dart';
=======
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/commons/alert_modal/alert_modal_widget.dart';
import '/components/commons/confirmation_modal/confirmation_modal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/home/components/skeletons/shimmer_current_project_name/shimmer_current_project_name_widget.dart';
import '/pages/maintenance/components/activities_input/activities_input_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'mtto_detail_widget.dart' show MttoDetailWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
>>>>>>> master

class MttoDetailModel extends FlutterFlowModel<MttoDetailWidget> {
  ///  Local state fields for this component.

  bool showStatusSwitcher = false;

  int? index;

  String? finalMttoStatus;

  bool showObservationsInput = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Update Row(s)] action in returnedStateButton widget.
  List<MaintenanceObjectsRow>? updateObjectWReturnState;
  // Stores action output result for [Backend Call - Update Row(s)] action in returnedStateButton widget.
  List<MaintenancesRow>? updateMttoWReturnComment;
  // State field(s) for operativeStateCheckbox widget.
  bool? operativeStateCheckboxValue;
  // State field(s) for pendingStateCheckbox widget.
  bool? pendingStateCheckboxValue;
  // State field(s) for outOfInventoryStateCheckbox widget.
  bool? outOfInventoryStateCheckboxValue;
  // State field(s) for transferStateCheckbox widget.
  bool? transferStateCheckboxValue;
  // State field(s) for tfailurStateCheckbox widget.
  bool? tfailurStateCheckboxValue;
  // Models for ActivitiesInput dynamic component.
  late FlutterFlowDynamicModels<ActivitiesInputModel> activitiesInputModels;
  bool isDataUploading_uploadedPhotographicRecord = false;
  FFUploadedFile uploadedLocalFile_uploadedPhotographicRecord =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadedPhotographicRecord = '';

  // State field(s) for authorizerName widget.
  FocusNode? authorizerNameFocusNode;
  TextEditingController? authorizerNameTextController;
  String? Function(BuildContext, String?)?
      authorizerNameTextControllerValidator;
  // State field(s) for reviewerName widget.
  FocusNode? reviewerNameFocusNode;
  TextEditingController? reviewerNameTextController;
  String? Function(BuildContext, String?)? reviewerNameTextControllerValidator;
  // State field(s) for approverName widget.
  FocusNode? approverNameFocusNode;
  TextEditingController? approverNameTextController;
  String? Function(BuildContext, String?)? approverNameTextControllerValidator;
  // State field(s) for mttoObservations widget.
  FocusNode? mttoObservationsFocusNode;
  TextEditingController? mttoObservationsTextController;
  String? Function(BuildContext, String?)?
      mttoObservationsTextControllerValidator;

  /// Query cache managers for this widget.

  final _cachedMttoDetailManager =
      FutureRequestManager<List<MaintenanceObjectsRow>>();
  Future<List<MaintenanceObjectsRow>> cachedMttoDetail({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<MaintenanceObjectsRow>> Function() requestFn,
  }) =>
      _cachedMttoDetailManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCachedMttoDetailCache() => _cachedMttoDetailManager.clear();
  void clearCachedMttoDetailCacheKey(String? uniqueKey) =>
      _cachedMttoDetailManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    activitiesInputModels =
        FlutterFlowDynamicModels(() => ActivitiesInputModel());
  }

  @override
  void dispose() {
    activitiesInputModels.dispose();
    authorizerNameFocusNode?.dispose();
    authorizerNameTextController?.dispose();

    reviewerNameFocusNode?.dispose();
    reviewerNameTextController?.dispose();

    approverNameFocusNode?.dispose();
    approverNameTextController?.dispose();

    mttoObservationsFocusNode?.dispose();
    mttoObservationsTextController?.dispose();

    /// Dispose query cache managers for this widget.

    clearCachedMttoDetailCache();
  }
}
