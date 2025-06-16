import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_bar_widget.dart' show NavBarWidget;
import 'package:flutter/material.dart';

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
