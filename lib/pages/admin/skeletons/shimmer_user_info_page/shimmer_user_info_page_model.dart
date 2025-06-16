import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/skeletons/shimmer_user_info/shimmer_user_info_widget.dart';
import 'shimmer_user_info_page_widget.dart' show ShimmerUserInfoPageWidget;
import 'package:flutter/material.dart';

class ShimmerUserInfoPageModel
    extends FlutterFlowModel<ShimmerUserInfoPageWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for shimmerUserInfo component.
  late ShimmerUserInfoModel shimmerUserInfoModel;

  @override
  void initState(BuildContext context) {
    shimmerUserInfoModel = createModel(context, () => ShimmerUserInfoModel());
  }

  @override
  void dispose() {
    shimmerUserInfoModel.dispose();
  }
}
