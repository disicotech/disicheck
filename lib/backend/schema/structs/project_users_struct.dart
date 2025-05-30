// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
<<<<<<< HEAD
=======
import '/backend/schema/enums/enums.dart';
>>>>>>> master

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectUsersStruct extends BaseStruct {
  ProjectUsersStruct({
    String? userId,
    String? userName,
    String? roleId,
    String? projectId,
    String? projectName,
    String? email,
  })  : _userId = userId,
        _userName = userName,
        _roleId = roleId,
        _projectId = projectId,
        _projectName = projectName,
        _email = email;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "role_id" field.
  String? _roleId;
  String get roleId => _roleId ?? '';
  set roleId(String? val) => _roleId = val;

  bool hasRoleId() => _roleId != null;

  // "project_id" field.
  String? _projectId;
  String get projectId => _projectId ?? '';
  set projectId(String? val) => _projectId = val;

  bool hasProjectId() => _projectId != null;

  // "project_name" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  set projectName(String? val) => _projectName = val;

  bool hasProjectName() => _projectName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  static ProjectUsersStruct fromMap(Map<String, dynamic> data) =>
      ProjectUsersStruct(
        userId: data['user_id'] as String?,
        userName: data['user_name'] as String?,
        roleId: data['role_id'] as String?,
        projectId: data['project_id'] as String?,
        projectName: data['project_name'] as String?,
        email: data['email'] as String?,
      );

  static ProjectUsersStruct? maybeFromMap(dynamic data) => data is Map
      ? ProjectUsersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user_id': _userId,
        'user_name': _userName,
        'role_id': _roleId,
        'project_id': _projectId,
        'project_name': _projectName,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'user_name': serializeParam(
          _userName,
          ParamType.String,
        ),
        'role_id': serializeParam(
          _roleId,
          ParamType.String,
        ),
        'project_id': serializeParam(
          _projectId,
          ParamType.String,
        ),
        'project_name': serializeParam(
          _projectName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProjectUsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProjectUsersStruct(
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        userName: deserializeParam(
          data['user_name'],
          ParamType.String,
          false,
        ),
        roleId: deserializeParam(
          data['role_id'],
          ParamType.String,
          false,
        ),
        projectId: deserializeParam(
          data['project_id'],
          ParamType.String,
          false,
        ),
        projectName: deserializeParam(
          data['project_name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProjectUsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProjectUsersStruct &&
        userId == other.userId &&
        userName == other.userName &&
        roleId == other.roleId &&
        projectId == other.projectId &&
        projectName == other.projectName &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([userId, userName, roleId, projectId, projectName, email]);
}

ProjectUsersStruct createProjectUsersStruct({
  String? userId,
  String? userName,
  String? roleId,
  String? projectId,
  String? projectName,
  String? email,
}) =>
    ProjectUsersStruct(
      userId: userId,
      userName: userName,
      roleId: roleId,
      projectId: projectId,
      projectName: projectName,
      email: email,
    );
