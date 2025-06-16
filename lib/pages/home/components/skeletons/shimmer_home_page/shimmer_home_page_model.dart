import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/skeletons/shimmer_current_project/shimmer_current_project_widget.dart';
import '/pages/home/components/skeletons/shimmer_maintenance_update/shimmer_maintenance_update_widget.dart';
import 'shimmer_home_page_widget.dart' show ShimmerHomePageWidget;
import 'package:flutter/material.dart';

class ShimmerHomePageModel extends FlutterFlowModel<ShimmerHomePageWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for shimmerCurrentProject component.
  late ShimmerCurrentProjectModel shimmerCurrentProjectModel;
  // Model for shimmerMaintenanceUpdate component.
  late ShimmerMaintenanceUpdateModel shimmerMaintenanceUpdateModel;

  @override
  void initState(BuildContext context) {
    shimmerCurrentProjectModel =
        createModel(context, () => ShimmerCurrentProjectModel());
    shimmerMaintenanceUpdateModel =
        createModel(context, () => ShimmerMaintenanceUpdateModel());
  }

  @override
  void dispose() {
    shimmerCurrentProjectModel.dispose();
    shimmerMaintenanceUpdateModel.dispose();
  }
}
