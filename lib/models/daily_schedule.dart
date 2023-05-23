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

  DailySchedule copyWith({
    int? id,
    int? dayNumber,
    List<TimeInterval>? intervals,
  }) {
    return DailySchedule(
      id: id ?? this.id,
      dayNumber: dayNumber ?? this.dayNumber,
      intervals: intervals ?? this.intervals,
    );
  }
}
