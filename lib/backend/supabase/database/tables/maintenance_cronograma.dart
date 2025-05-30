import '../database.dart';

class MaintenanceCronogramaTable
    extends SupabaseTable<MaintenanceCronogramaRow> {
  @override
  String get tableName => 'maintenance_cronograma';

  @override
  MaintenanceCronogramaRow createRow(Map<String, dynamic> data) =>
      MaintenanceCronogramaRow(data);
}

class MaintenanceCronogramaRow extends SupabaseDataRow {
  MaintenanceCronogramaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MaintenanceCronogramaTable();

  String? get odemId => getField<String>('odem_id');
  set odemId(String? value) => setField<String>('odem_id', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  DateTime? get entryDate => getField<DateTime>('entry_date');
  set entryDate(DateTime? value) => setField<DateTime>('entry_date', value);

  String? get maintenanceFrequency => getField<String>('maintenance_frequency');
  set maintenanceFrequency(String? value) =>
      setField<String>('maintenance_frequency', value);

  DateTime? get lastMaintenanceDate =>
      getField<DateTime>('last_maintenance_date');
  set lastMaintenanceDate(DateTime? value) =>
      setField<DateTime>('last_maintenance_date', value);

  DateTime? get nextMaintenanceDate =>
      getField<DateTime>('next_maintenance_date');
  set nextMaintenanceDate(DateTime? value) =>
      setField<DateTime>('next_maintenance_date', value);

  String? get scheduledMaintenanceType =>
      getField<String>('scheduled_maintenance_type');
  set scheduledMaintenanceType(String? value) =>
      setField<String>('scheduled_maintenance_type', value);

  String? get executedMaintenanceType =>
      getField<String>('executed_maintenance_type');
  set executedMaintenanceType(String? value) =>
      setField<String>('executed_maintenance_type', value);

  String? get responsibleId => getField<String>('responsible_id');
  set responsibleId(String? value) => setField<String>('responsible_id', value);

  String? get assignedProjectId => getField<String>('assigned_project_id');
  set assignedProjectId(String? value) =>
      setField<String>('assigned_project_id', value);
}
