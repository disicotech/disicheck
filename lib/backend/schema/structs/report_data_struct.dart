// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
<<<<<<< HEAD
=======
import '/backend/schema/enums/enums.dart';
>>>>>>> master

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportDataStruct extends BaseStruct {
  ReportDataStruct({
    String? name,
  }) : _name = name;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static ReportDataStruct fromMap(Map<String, dynamic> data) =>
      ReportDataStruct(
        name: data['Name'] as String?,
      );

  static ReportDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportDataStruct.fromMap(data.cast<String, dynamic>())
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

  static ReportDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReportDataStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReportDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportDataStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

ReportDataStruct createReportDataStruct({
  String? name,
}) =>
    ReportDataStruct(
      name: name,
    );
