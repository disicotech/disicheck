import '../database.dart';

class MaintenanceMonthsTable extends SupabaseTable<MaintenanceMonthsRow> {
  @override
  String get tableName => 'maintenance_months';

  @override
  MaintenanceMonthsRow createRow(Map<String, dynamic> data) =>
      MaintenanceMonthsRow(data);
}

class MaintenanceMonthsRow extends SupabaseDataRow {
  MaintenanceMonthsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MaintenanceMonthsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get maintenanceId => getField<String>('maintenance_id')!;
  set maintenanceId(String value) => setField<String>('maintenance_id', value);

  int get year => getField<int>('year')!;
  set year(int value) => setField<int>('year', value);

  String get month => getField<String>('month')!;
  set month(String value) => setField<String>('month', value);

  bool get wasDone => getField<bool>('was_done')!;
  set wasDone(bool value) => setField<bool>('was_done', value);
}
