// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaitenanceStatusStruct extends BaseStruct {
  MaitenanceStatusStruct({
    String? name,
  }) : _name = name;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static MaitenanceStatusStruct fromMap(Map<String, dynamic> data) =>
      MaitenanceStatusStruct(
        name: data['Name'] as String?,
      );

  static MaitenanceStatusStruct? maybeFromMap(dynamic data) => data is Map
      ? MaitenanceStatusStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static MaitenanceStatusStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MaitenanceStatusStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MaitenanceStatusStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MaitenanceStatusStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

MaitenanceStatusStruct createMaitenanceStatusStruct({
  String? name,
}) =>
    MaitenanceStatusStruct(
      name: name,
    );
