import 'package:vz_mid/constants.dart';
import 'package:vz_mid/models/daily_schedule.dart';
import 'package:vz_mid/models/schedule.dart';
import 'package:vz_mid/repository/mappers/daily_schedule.dart';

class ScheduleMapper {
  static Schedule fromSchData(int id, List<Map<String, Object?>> scheduleData) {
    final dailySchedule = <DailySchedule>[];
    for (var sch in scheduleData) {
      int id = sch['id'] as int;
      final day = sch['day'] as int;
      final time = sch['time']! as int;
      dailySchedule.add(DailyScheduleMapper.fromTime(id, day, time));
    }

    final dayToSch = <int, DailySchedule>{};
    for (var d in dailySchedule) {
      dayToSch[d.dayNumber] = d;
    }
    final days = dayToSch.keys;

    for (int i = 0; i < Constants.daysInAWeek; ++i) {
      if (!days.contains(i)) {
        dailySchedule.add(
            DailyScheduleMapper.fromTime(-1, i, Constants.maxIntervalValue));
      }
    }

    return Schedule(
      employerId: id,
      schedule: dailySchedule,
    );
  }
}
