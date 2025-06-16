// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivityStruct extends BaseStruct {
  ActivityStruct({
    String? id,
    String? actividad,
    String? descripcion,
  })  : _id = id,
        _actividad = actividad,
        _descripcion = descripcion;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "actividad" field.
  String? _actividad;
  String get actividad => _actividad ?? '';
  set actividad(String? val) => _actividad = val;

  bool hasActividad() => _actividad != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  set descripcion(String? val) => _descripcion = val;

  bool hasDescripcion() => _descripcion != null;

  static ActivityStruct fromMap(Map<String, dynamic> data) => ActivityStruct(
        id: data['id'] as String?,
        actividad: data['actividad'] as String?,
        descripcion: data['descripcion'] as String?,
      );

  static ActivityStruct? maybeFromMap(dynamic data) =>
      data is Map ? ActivityStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'actividad': _actividad,
        'descripcion': _descripcion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'actividad': serializeParam(
          _actividad,
          ParamType.String,
        ),
        'descripcion': serializeParam(
          _descripcion,
          ParamType.String,
        ),
      }.withoutNulls;

  static ActivityStruct fromSerializableMap(Map<String, dynamic> data) =>
      ActivityStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        actividad: deserializeParam(
          data['actividad'],
          ParamType.String,
          false,
        ),
        descripcion: deserializeParam(
          data['descripcion'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ActivityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ActivityStruct &&
        id == other.id &&
        actividad == other.actividad &&
        descripcion == other.descripcion;
  }

  @override
  int get hashCode => const ListEquality().hash([id, actividad, descripcion]);
}

ActivityStruct createActivityStruct({
  String? id,
  String? actividad,
  String? descripcion,
}) =>
    ActivityStruct(
      id: id,
      actividad: actividad,
      descripcion: descripcion,
    );
