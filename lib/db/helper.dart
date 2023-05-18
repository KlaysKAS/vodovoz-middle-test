import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:vz_mid/db/source.dart';
import 'package:vz_mid/db/tables.dart';

const _dbName = 'database.db';
const _dbVersion = 2;

class DBHelper extends Source {
  late final Database _db;
  final EmployerTable _employerTable;
  final ScheduleTable _scheduleTable;

  DBHelper(this._employerTable, this._scheduleTable);

  Future<void> open() async {
    final dir = Platform.isIOS
        ? await getLibraryDirectory()
        : await getApplicationDocumentsDirectory();
    final path = join(dir.path, _dbName);
    _db = await openDatabase(
      path,
      version: _dbVersion,
      onCreate: (db, version) async {
        await _employerTable.create(db);
        await _scheduleTable.create(db);
      },
    );
  }

  @override
  Future<List<Map<String, Object?>>> selectAllEmployer() {
    return _db.query(_employerTable.tableName);
  }

  @override
  Future<List<Map<String, Object?>>> insertEmployer(String name) async {
    assert(name.isNotEmpty);
    await _db.insert(_employerTable.tableName, {_employerTable.name: name});
    return _db.query(_employerTable.tableName,
        where: '${_employerTable.name} = ?', whereArgs: [name]);
  }

  @override
  Future<List<Map<String, Object?>>> selectSchedule(int employerID) {
    return _db.query(_scheduleTable.tableName,
        where: '${_scheduleTable.employerId} = ?', whereArgs: [employerID]);
  }

  @override
  Future<int> updateSchedule(int employerID, int day, int time) async {
    final entry = await _db.query(_scheduleTable.tableName,
        where: '${_scheduleTable.employerId} = ? AND '
            '${_scheduleTable.day} = ?',
        whereArgs: [employerID, day]);

    if (entry.isEmpty) {
      await _db.insert(
        _scheduleTable.tableName,
        {
          _scheduleTable.employerId: employerID,
          _scheduleTable.day: day,
          _scheduleTable.time: time,
        },
      );
    } else {
      await _db.update(
          _scheduleTable.tableName,
          {
            _scheduleTable.employerId: employerID,
            _scheduleTable.day: day,
            _scheduleTable.time: time,
          },
          where: '${_scheduleTable.id} = ?',
          whereArgs: [entry.first[_scheduleTable.id]]);
    }
    return time;
  }
}
