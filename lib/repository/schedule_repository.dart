import 'package:vz_mid/db/source.dart';
import 'package:vz_mid/models/daily_schedule.dart';
import 'package:vz_mid/models/employer.dart';
import 'package:vz_mid/repository/mappers/daily_schedule.dart';
import 'package:vz_mid/repository/mappers/employer.dart';
import 'package:vz_mid/repository/mappers/intervals.dart';

class ScheduleRepository {
  final Source _source;

  ScheduleRepository(this._source);

  Future<List<Employer>> getEmployers() async {
    final data = await _source.selectAllEmployer();
    final employers = <Employer>[];
    for (var emp in data) {
      final scheduleData = await _source.selectSchedule(emp['id']! as int);
      employers.add(
        EmployerMapper.fromData(
          emp['id'] as int,
          emp['name'] as String,
          scheduleData,
        ),
      );
    }
    return employers;
  }

  Future<Employer> addEmployer(String name) async {
    final data = (await _source.insertEmployer(name)).first;
    final scheduleData = await _source.selectSchedule(data['id'] as int);

    return EmployerMapper.fromData(
      data['id'] as int,
      data['name'] as String,
      scheduleData,
    );
  }

  Future<DailySchedule> changeSchedule(int id, DailySchedule ds) async {
    final newTime = IntervalMapper.toInt(ds.intervals);
    final changedTime = await _source.updateSchedule(id, ds.dayNumber, newTime);
    return DailyScheduleMapper.fromTime(ds.id, ds.dayNumber, changedTime);
  }
}
