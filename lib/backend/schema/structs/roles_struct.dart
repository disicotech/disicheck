// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
<<<<<<< HEAD
=======
import '/backend/schema/enums/enums.dart';
>>>>>>> master

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RolesStruct extends BaseStruct {
  RolesStruct({
    String? name,
    int? id,
  })  : _name = name,
        _id = id;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static RolesStruct fromMap(Map<String, dynamic> data) => RolesStruct(
        name: data['Name'] as String?,
        id: castToType<int>(data['id']),
      );

  static RolesStruct? maybeFromMap(dynamic data) =>
      data is Map ? RolesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static RolesStruct fromSerializableMap(Map<String, dynamic> data) =>
      RolesStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RolesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RolesStruct && name == other.name && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([name, id]);
}

RolesStruct createRolesStruct({
  String? name,
  int? id,
}) =>
    RolesStruct(
      name: name,
      id: id,
    );
