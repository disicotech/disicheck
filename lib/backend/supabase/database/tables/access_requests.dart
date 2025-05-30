import '../database.dart';

class AccessRequestsTable extends SupabaseTable<AccessRequestsRow> {
  @override
  String get tableName => 'access_requests';

  @override
  AccessRequestsRow createRow(Map<String, dynamic> data) =>
      AccessRequestsRow(data);
}

class AccessRequestsRow extends SupabaseDataRow {
  AccessRequestsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AccessRequestsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get roleId => getField<int>('role_id');
  set roleId(int? value) => setField<int>('role_id', value);

  String? get projectRequested => getField<String>('project_requested');
  set projectRequested(String? value) =>
      setField<String>('project_requested', value);

  String? get accessRequestId => getField<String>('access_request_id');
  set accessRequestId(String? value) =>
      setField<String>('access_request_id', value);
}
