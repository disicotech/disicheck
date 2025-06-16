import '../database.dart';

class ObjectsWithMttoCountTable extends SupabaseTable<ObjectsWithMttoCountRow> {
  @override
  String get tableName => 'objects_with_mtto_count';

  @override
  ObjectsWithMttoCountRow createRow(Map<String, dynamic> data) =>
      ObjectsWithMttoCountRow(data);
}

class ObjectsWithMttoCountRow extends SupabaseDataRow {
  ObjectsWithMttoCountRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ObjectsWithMttoCountTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get currentState => getField<String>('current_state');
  set currentState(String? value) => setField<String>('current_state', value);

  String? get criticalTaskPerformed =>
      getField<String>('critical_task_performed');
  set criticalTaskPerformed(String? value) =>
      setField<String>('critical_task_performed', value);

  String? get assignedProjectId => getField<String>('assigned_project_id');
  set assignedProjectId(String? value) =>
      setField<String>('assigned_project_id', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);

  DateTime? get adquisitionDate => getField<DateTime>('adquisition_date');
  set adquisitionDate(DateTime? value) =>
      setField<DateTime>('adquisition_date', value);

  DateTime? get entryDate => getField<DateTime>('entry_date');
  set entryDate(DateTime? value) => setField<DateTime>('entry_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  double? get registrantDni => getField<double>('registrant_dni');
  set registrantDni(double? value) => setField<double>('registrant_dni', value);

  String? get moImage => getField<String>('mo_image');
  set moImage(String? value) => setField<String>('mo_image', value);

  String? get criticalityLevel => getField<String>('criticality_level');
  set criticalityLevel(String? value) =>
      setField<String>('criticality_level', value);

  double? get serviceLife => getField<double>('service_life');
  set serviceLife(double? value) => setField<double>('service_life', value);

  String? get transferLocation => getField<String>('transfer_location');
  set transferLocation(String? value) =>
      setField<String>('transfer_location', value);

  int? get numMantenimientos => getField<int>('num_mantenimientos');
  set numMantenimientos(int? value) =>
      setField<int>('num_mantenimientos', value);
}
