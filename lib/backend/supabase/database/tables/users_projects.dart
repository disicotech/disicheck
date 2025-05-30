import '../database.dart';

class UsersProjectsTable extends SupabaseTable<UsersProjectsRow> {
  @override
  String get tableName => 'users_projects';

  @override
  UsersProjectsRow createRow(Map<String, dynamic> data) =>
      UsersProjectsRow(data);
}

class UsersProjectsRow extends SupabaseDataRow {
  UsersProjectsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersProjectsTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get projectId => getField<String>('project_id')!;
  set projectId(String value) => setField<String>('project_id', value);
}
