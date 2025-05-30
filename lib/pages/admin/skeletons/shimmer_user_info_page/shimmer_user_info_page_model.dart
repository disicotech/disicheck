<<<<<<< HEAD
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/skeletons/shimmer_user_info/shimmer_user_info_widget.dart';
import 'shimmer_user_info_page_widget.dart' show ShimmerUserInfoPageWidget;
import 'package:flutter/material.dart';
=======
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/admin/skeletons/shimmer_user_info/shimmer_user_info_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'shimmer_user_info_page_widget.dart' show ShimmerUserInfoPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
>>>>>>> master

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
