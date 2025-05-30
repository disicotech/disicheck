// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
<<<<<<< HEAD
=======
import '/backend/schema/enums/enums.dart';
>>>>>>> master

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivitiesStruct extends BaseStruct {
  ActivitiesStruct({
    String? id,
    String? name,
    String? description,
  })  : _id = id,
        _name = name,
        _description = description;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static ActivitiesStruct fromMap(Map<String, dynamic> data) =>
      ActivitiesStruct(
        id: data['id'] as String?,
        name: data['Name'] as String?,
        description: data['Description'] as String?,
      );

  static ActivitiesStruct? maybeFromMap(dynamic data) => data is Map
      ? ActivitiesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'Name': _name,
        'Description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static ActivitiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ActivitiesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['Description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ActivitiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ActivitiesStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, description]);
}

ActivitiesStruct createActivitiesStruct({
  String? id,
  String? name,
  String? description,
}) =>
    ActivitiesStruct(
      id: id,
      name: name,
      description: description,
    );
