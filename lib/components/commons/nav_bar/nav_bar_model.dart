import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/index.dart';
import 'nav_bar_widget.dart' show NavBarWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavBarModel extends FlutterFlowModel<NavBarWidget> {
  ///  Local state fields for this component.
  /// Defines which is the selected page so the navbar can redirect the user and
  /// mark the current page.
  NavbarNavigation? selectedPage = NavbarNavigation.HOME_PAGE;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
