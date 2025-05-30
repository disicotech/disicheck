// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
<<<<<<< HEAD
=======
import '/backend/schema/enums/enums.dart';
>>>>>>> master

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetadataForMttoObjectStruct extends BaseStruct {
  MetadataForMttoObjectStruct({
    String? id,
    String? name,
    String? description,
  })  : _id = id,
        _name = name,
        _description = description;

  // "Id" field.
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

  static MetadataForMttoObjectStruct fromMap(Map<String, dynamic> data) =>
      MetadataForMttoObjectStruct(
        id: data['Id'] as String?,
        name: data['Name'] as String?,
        description: data['Description'] as String?,
      );

  static MetadataForMttoObjectStruct? maybeFromMap(dynamic data) => data is Map
      ? MetadataForMttoObjectStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'Name': _name,
        'Description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
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

  static MetadataForMttoObjectStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MetadataForMttoObjectStruct(
        id: deserializeParam(
          data['Id'],
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
  String toString() => 'MetadataForMttoObjectStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MetadataForMttoObjectStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, description]);
}

MetadataForMttoObjectStruct createMetadataForMttoObjectStruct({
  String? id,
  String? name,
  String? description,
}) =>
    MetadataForMttoObjectStruct(
      id: id,
      name: name,
      description: description,
    );
