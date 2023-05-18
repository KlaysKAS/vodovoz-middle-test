import 'package:vz_mid/models/daily_schedule.dart';
import 'package:vz_mid/repository/mappers/intervals.dart';

class DailyScheduleMapper {
  static DailySchedule fromTime(int id, int day, int time) {
    return DailySchedule(
      id: id,
      dayNumber: day,
      intervals: IntervalMapper.fromInt(time),
    );
  }
}
