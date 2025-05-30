import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin/skeletons/shimmer_users_list/shimmer_users_list_widget.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'users_list_page_widget.dart' show UsersListPageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class UsersListPageModel extends FlutterFlowModel<UsersListPageWidget> {
  ///  Local state fields for this page.

  List<UsersRow> usersList = [];
  void addToUsersList(UsersRow item) => usersList.add(item);
  void removeFromUsersList(UsersRow item) => usersList.remove(item);
  void removeAtIndexFromUsersList(int index) => usersList.removeAt(index);
  void insertAtIndexInUsersList(int index, UsersRow item) =>
      usersList.insert(index, item);
  void updateUsersListAtIndex(int index, Function(UsersRow) updateFn) =>
      usersList[index] = updateFn(usersList[index]);

  bool searchIsActive = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in UsersListPage widget.
  List<UsersRow>? queryAllUsers;
  // Model for DesktopSideBar component.
  late DesktopSideBarModel desktopSideBarModel;
  // State field(s) for userNameSearch widget.
  FocusNode? userNameSearchFocusNode;
  TextEditingController? userNameSearchTextController;
  String? Function(BuildContext, String?)?
      userNameSearchTextControllerValidator;
  List<String> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {
    desktopSideBarModel = createModel(context, () => DesktopSideBarModel());
  }

  @override
  void dispose() {
    desktopSideBarModel.dispose();
    userNameSearchFocusNode?.dispose();
    userNameSearchTextController?.dispose();
  }
}
