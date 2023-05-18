import 'package:vz_mid/models/time_interval.dart';

class DailySchedule {
  final int id;
  final int dayNumber;
  final List<TimeInterval> intervals;

  const DailySchedule({
    required this.id,
    required this.dayNumber,
    required this.intervals,
  });
}
