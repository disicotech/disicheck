import '../database.dart';

class UsersWithProjectsTable extends SupabaseTable<UsersWithProjectsRow> {
  @override
  String get tableName => 'users_with_projects';

  @override
  UsersWithProjectsRow createRow(Map<String, dynamic> data) =>
      UsersWithProjectsRow(data);
}

class UsersWithProjectsRow extends SupabaseDataRow {
  UsersWithProjectsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersWithProjectsTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  int? get roleId => getField<int>('role_id');
  set roleId(int? value) => setField<int>('role_id', value);

  String? get projectId => getField<String>('project_id');
  set projectId(String? value) => setField<String>('project_id', value);

  String? get projectName => getField<String>('project_name');
  set projectName(String? value) => setField<String>('project_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
