import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/components/desktop_side_bar/desktop_side_bar_widget.dart';
import '/index.dart';
import 'users_list_page_widget.dart' show UsersListPageWidget;
import 'package:flutter/material.dart';

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
