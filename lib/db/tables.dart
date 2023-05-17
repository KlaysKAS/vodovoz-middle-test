import 'package:sqflite/sqflite.dart';

abstract class BaseTable {
  String get _createStatement;

  String get tableName;

  List<String> get columns;

  Future<void> create(Database db) async {
    await db.execute(_createStatement);
  }
}

class EmployerTable extends BaseTable {
  final id = 'id';
  final name = 'name';

  @override
  String get tableName => 'employer';

  @override
  List<String> get columns => [id, name];

  @override
  String get _createStatement => '''
        create table $tableName (
          $id integer primary key autoincrement, 
          $name text not null
       )
       ''';
}

class ScheduleTable extends BaseTable {
  final id = 'id';
  final employerId = 'employer_id';
  final day = 'day';
  final time = 'time';

  @override
  String get tableName => 'schedule';

  @override
  List<String> get columns => [id, employerId, day, time];

  @override
  String get _createStatement => '''
        create table $tableName ( 
          $id integer primary key autoincrement,
          $employerId integer not null,
          $day integer not null,
          $time integer not null,
          FOREIGN KEY($employerId) REFERENCES employer(id)
       )
       ''';
}
