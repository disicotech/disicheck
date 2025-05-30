// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Criterios de disposición.
class OdemDispoCriteriaStruct extends BaseStruct {
  OdemDispoCriteriaStruct({
    /// Categoría del objeto de mantenimiento
    MoCategories? category,

    /// Criterios de reposición parcial
    String? criteriosReposicinParcial,

    /// Criterios de reposición total y dar de baja del inventario.
    String? criteriosReposicinTotalBajaInventario,

    /// Criterios de disposición final
    String? criteriosDisposicionFinal,
  })  : _category = category,
        _criteriosReposicinParcial = criteriosReposicinParcial,
        _criteriosReposicinTotalBajaInventario =
            criteriosReposicinTotalBajaInventario,
        _criteriosDisposicionFinal = criteriosDisposicionFinal;

  // "Category" field.
  MoCategories? _category;
  MoCategories get category => _category ?? MoCategories.INFRA;
  set category(MoCategories? val) => _category = val;

  bool hasCategory() => _category != null;

  // "CriteriosReposicinParcial" field.
  String? _criteriosReposicinParcial;
  String get criteriosReposicinParcial => _criteriosReposicinParcial ?? '';
  set criteriosReposicinParcial(String? val) =>
      _criteriosReposicinParcial = val;

  bool hasCriteriosReposicinParcial() => _criteriosReposicinParcial != null;

  // "CriteriosReposicinTotalBajaInventario" field.
  String? _criteriosReposicinTotalBajaInventario;
  String get criteriosReposicinTotalBajaInventario =>
      _criteriosReposicinTotalBajaInventario ?? '';
  set criteriosReposicinTotalBajaInventario(String? val) =>
      _criteriosReposicinTotalBajaInventario = val;

  bool hasCriteriosReposicinTotalBajaInventario() =>
      _criteriosReposicinTotalBajaInventario != null;

  // "CriteriosDisposicionFinal" field.
  String? _criteriosDisposicionFinal;
  String get criteriosDisposicionFinal => _criteriosDisposicionFinal ?? '';
  set criteriosDisposicionFinal(String? val) =>
      _criteriosDisposicionFinal = val;

  bool hasCriteriosDisposicionFinal() => _criteriosDisposicionFinal != null;

  static OdemDispoCriteriaStruct fromMap(Map<String, dynamic> data) =>
      OdemDispoCriteriaStruct(
        category: data['Category'] is MoCategories
            ? data['Category']
            : deserializeEnum<MoCategories>(data['Category']),
        criteriosReposicinParcial: data['CriteriosReposicinParcial'] as String?,
        criteriosReposicinTotalBajaInventario:
            data['CriteriosReposicinTotalBajaInventario'] as String?,
        criteriosDisposicionFinal: data['CriteriosDisposicionFinal'] as String?,
      );

  static OdemDispoCriteriaStruct? maybeFromMap(dynamic data) => data is Map
      ? OdemDispoCriteriaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Category': _category?.serialize(),
        'CriteriosReposicinParcial': _criteriosReposicinParcial,
        'CriteriosReposicinTotalBajaInventario':
            _criteriosReposicinTotalBajaInventario,
        'CriteriosDisposicionFinal': _criteriosDisposicionFinal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Category': serializeParam(
          _category,
          ParamType.Enum,
        ),
        'CriteriosReposicinParcial': serializeParam(
          _criteriosReposicinParcial,
          ParamType.String,
        ),
        'CriteriosReposicinTotalBajaInventario': serializeParam(
          _criteriosReposicinTotalBajaInventario,
          ParamType.String,
        ),
        'CriteriosDisposicionFinal': serializeParam(
          _criteriosDisposicionFinal,
          ParamType.String,
        ),
      }.withoutNulls;

  static OdemDispoCriteriaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OdemDispoCriteriaStruct(
        category: deserializeParam<MoCategories>(
          data['Category'],
          ParamType.Enum,
          false,
        ),
        criteriosReposicinParcial: deserializeParam(
          data['CriteriosReposicinParcial'],
          ParamType.String,
          false,
        ),
        criteriosReposicinTotalBajaInventario: deserializeParam(
          data['CriteriosReposicinTotalBajaInventario'],
          ParamType.String,
          false,
        ),
        criteriosDisposicionFinal: deserializeParam(
          data['CriteriosDisposicionFinal'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OdemDispoCriteriaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OdemDispoCriteriaStruct &&
        category == other.category &&
        criteriosReposicinParcial == other.criteriosReposicinParcial &&
        criteriosReposicinTotalBajaInventario ==
            other.criteriosReposicinTotalBajaInventario &&
        criteriosDisposicionFinal == other.criteriosDisposicionFinal;
  }

  @override
  int get hashCode => const ListEquality().hash([
        category,
        criteriosReposicinParcial,
        criteriosReposicinTotalBajaInventario,
        criteriosDisposicionFinal
      ]);
}

OdemDispoCriteriaStruct createOdemDispoCriteriaStruct({
  MoCategories? category,
  String? criteriosReposicinParcial,
  String? criteriosReposicinTotalBajaInventario,
  String? criteriosDisposicionFinal,
}) =>
    OdemDispoCriteriaStruct(
      category: category,
      criteriosReposicinParcial: criteriosReposicinParcial,
      criteriosReposicinTotalBajaInventario:
          criteriosReposicinTotalBajaInventario,
      criteriosDisposicionFinal: criteriosDisposicionFinal,
    );
