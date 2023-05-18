import 'package:vz_mid/models/daily_schedule.dart';

class Schedule {
  final int employerId;
  final List<DailySchedule> schedule;

  const Schedule({
    required this.employerId,
    required this.schedule,
  });
}
