import '../database.dart';

class MaintenanceObjectsTable extends SupabaseTable<MaintenanceObjectsRow> {
  @override
  String get tableName => 'maintenance_objects';

  @override
  MaintenanceObjectsRow createRow(Map<String, dynamic> data) =>
      MaintenanceObjectsRow(data);
}

class MaintenanceObjectsRow extends SupabaseDataRow {
  MaintenanceObjectsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MaintenanceObjectsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get ref => getField<String>('ref');
  set ref(String? value) => setField<String>('ref', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);

  String get currentState => getField<String>('current_state')!;
  set currentState(String value) => setField<String>('current_state', value);

  String? get criticalTaskPerformed =>
      getField<String>('critical_task_performed');
  set criticalTaskPerformed(String? value) =>
      setField<String>('critical_task_performed', value);

  String? get assignedProjectId => getField<String>('assigned_project_id');
  set assignedProjectId(String? value) =>
      setField<String>('assigned_project_id', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);

<<<<<<< HEAD
  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);
=======
  dynamic? get metadata => getField<dynamic>('metadata');
  set metadata(dynamic? value) => setField<dynamic>('metadata', value);
>>>>>>> master

  DateTime? get adquisitionDate => getField<DateTime>('adquisition_date');
  set adquisitionDate(DateTime? value) =>
      setField<DateTime>('adquisition_date', value);

  DateTime? get entryDate => getField<DateTime>('entry_date');
  set entryDate(DateTime? value) => setField<DateTime>('entry_date', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

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

  DateTime? get lastMaintenanceDate =>
      getField<DateTime>('last_maintenance_date');
  set lastMaintenanceDate(DateTime? value) =>
      setField<DateTime>('last_maintenance_date', value);

  String get maintenanceFrecuency => getField<String>('maintenance_frecuency')!;
  set maintenanceFrecuency(String value) =>
      setField<String>('maintenance_frecuency', value);

  String? get responsibleId => getField<String>('responsible_id');
  set responsibleId(String? value) => setField<String>('responsible_id', value);

  String? get legacyId => getField<String>('legacy_id');
  set legacyId(String? value) => setField<String>('legacy_id', value);

  String? get toolsGroup => getField<String>('tools_group');
  set toolsGroup(String? value) => setField<String>('tools_group', value);
}
