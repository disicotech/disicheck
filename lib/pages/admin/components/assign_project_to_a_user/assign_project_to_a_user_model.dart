import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
<<<<<<< HEAD
import 'assign_project_to_a_user_widget.dart' show AssignProjectToAUserWidget;
import 'package:flutter/material.dart';
=======
import 'dart:ui';
import 'assign_project_to_a_user_widget.dart' show AssignProjectToAUserWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
>>>>>>> master

class AssignProjectToAUserModel
    extends FlutterFlowModel<AssignProjectToAUserWidget> {
  ///  Local state fields for this component.

  String? selectedProject;

  List<ProjectsRow> baseProjectsSearch = [];
  void addToBaseProjectsSearch(ProjectsRow item) =>
      baseProjectsSearch.add(item);
  void removeFromBaseProjectsSearch(ProjectsRow item) =>
      baseProjectsSearch.remove(item);
  void removeAtIndexFromBaseProjectsSearch(int index) =>
      baseProjectsSearch.removeAt(index);
  void insertAtIndexInBaseProjectsSearch(int index, ProjectsRow item) =>
      baseProjectsSearch.insert(index, item);
  void updateBaseProjectsSearchAtIndex(
          int index, Function(ProjectsRow) updateFn) =>
      baseProjectsSearch[index] = updateFn(baseProjectsSearch[index]);

  List<ProjectsRow> searchedProjects = [];
  void addToSearchedProjects(ProjectsRow item) => searchedProjects.add(item);
  void removeFromSearchedProjects(ProjectsRow item) =>
      searchedProjects.remove(item);
  void removeAtIndexFromSearchedProjects(int index) =>
      searchedProjects.removeAt(index);
  void insertAtIndexInSearchedProjects(int index, ProjectsRow item) =>
      searchedProjects.insert(index, item);
  void updateSearchedProjectsAtIndex(
          int index, Function(ProjectsRow) updateFn) =>
      searchedProjects[index] = updateFn(searchedProjects[index]);

  int? selectedItemInList = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in AssignProjectToAUser widget.
  List<ProjectsRow>? allProjects;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<String> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
