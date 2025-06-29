import '../database.dart';

class MaintenancesTable extends SupabaseTable<MaintenancesRow> {
  @override
  String get tableName => 'maintenances';

  @override
  MaintenancesRow createRow(Map<String, dynamic> data) => MaintenancesRow(data);
}

class MaintenancesRow extends SupabaseDataRow {
  MaintenancesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MaintenancesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get odemId => getField<String>('odem_id')!;
  set odemId(String value) => setField<String>('odem_id', value);

  String? get responsibleId => getField<String>('responsible_id');
  set responsibleId(String? value) => setField<String>('responsible_id', value);

  String? get maintenanceCode => getField<String>('maintenance_code');
  set maintenanceCode(String? value) =>
      setField<String>('maintenance_code', value);

  String get typeOfMaintenance => getField<String>('type_of_maintenance')!;
  set typeOfMaintenance(String value) =>
      setField<String>('type_of_maintenance', value);

  String get maintenanceFinalStatus =>
      getField<String>('maintenance_final_status')!;
  set maintenanceFinalStatus(String value) =>
      setField<String>('maintenance_final_status', value);

  String get frequency => getField<String>('frequency')!;
  set frequency(String value) => setField<String>('frequency', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  dynamic get activities => getField<dynamic>('activities');
  set activities(dynamic value) => setField<dynamic>('activities', value);

  String? get observations => getField<String>('observations');
  set observations(String? value) => setField<String>('observations', value);

  dynamic get specificActivities => getField<dynamic>('specific_activities');
  set specificActivities(dynamic value) =>
      setField<dynamic>('specific_activities', value);

  String? get maintenanceProvider => getField<String>('maintenance_provider');
  set maintenanceProvider(String? value) =>
      setField<String>('maintenance_provider', value);

  String? get authorizingSignature => getField<String>('authorizing_signature');
  set authorizingSignature(String? value) =>
      setField<String>('authorizing_signature', value);

  String? get transferLocation => getField<String>('transfer_location');
  set transferLocation(String? value) =>
      setField<String>('transfer_location', value);

  String? get reviewerId => getField<String>('reviewer_id');
  set reviewerId(String? value) => setField<String>('reviewer_id', value);

  String? get approverId => getField<String>('approver_id');
  set approverId(String? value) => setField<String>('approver_id', value);

  bool? get requiresMaintenanceProvider =>
      getField<bool>('requires_maintenance_provider');
  set requiresMaintenanceProvider(bool? value) =>
      setField<bool>('requires_maintenance_provider', value);

  int? get numberOfScheduledMaintenance =>
      getField<int>('number_of_scheduled_maintenance');
  set numberOfScheduledMaintenance(int? value) =>
      setField<int>('number_of_scheduled_maintenance', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String? get maintenancePhotographicEvidence =>
      getField<String>('maintenance_photographic_evidence');
  set maintenancePhotographicEvidence(String? value) =>
      setField<String>('maintenance_photographic_evidence', value);

  String? get subLocation => getField<String>('sub_location');
  set subLocation(String? value) => setField<String>('sub_location', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get responsibleName => getField<String>('responsible_name');
  set responsibleName(String? value) =>
      setField<String>('responsible_name', value);
}
