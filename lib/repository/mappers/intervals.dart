import 'package:vz_mid/constants.dart';
import 'package:vz_mid/models/time_interval.dart';

class IntervalMapper {
  static List<TimeInterval> fromInt(int time) {
    int from = -1;
    int to = -1;
    final intervals = <TimeInterval>[];
    for (var i = 0; (1 << i) <= time; ++i) {
      if ((1 << i) & time >= 1) {
        if (to == -1) {
          to = i;
          from = i;
        } else {
          from = i;
        }
      } else {
        if (from != -1 && to != -1) {
          from = (Constants.intervalDivisions - from - 1) * Constants.interval;
          to = (Constants.intervalDivisions - to) * Constants.interval;
          intervals.add(
            TimeInterval(
              from: DateTime(0, 0, 0, 0, from),
              to: DateTime(0, 0, 0, 0, to),
            ),
          );
          from = -1;
          to = -1;
        }
      }
    }
    if (from != -1 && to != -1) {
      from = (Constants.intervalDivisions - from - 1) * Constants.interval;
      to = (Constants.intervalDivisions - to) * Constants.interval;
      intervals.add(
        TimeInterval(
          from: DateTime(0, 0, 0, 0, from),
          to: DateTime(0, 0, 0, 0, to),
        ),
      );
    }
    if (intervals.isEmpty) {
      intervals.add(
        TimeInterval(
          from: DateTime(0, 0, 0, 0, 0),
          to: DateTime(0, 0, 0, 0, Constants.maxMinutes),
        ),
      );
    }

    return intervals;
  }

  static int toInt(List<TimeInterval> intervals) {
    final result = List.filled(Constants.intervalDivisions + 1, '0');
    for (var interval in intervals) {
      final from =
          (interval.from.minute + Constants.interval - 1) ~/ Constants.interval;
      final to =
          (interval.to.minute + Constants.interval - 1) ~/ Constants.interval;
      for (int i = from; i < to; ++i) {
        result[i] = '1';
      }
    }
    if (!result.contains('1')) {
      return Constants.maxIntervalValue;
    } else {
      return int.parse(result.join(), radix: 2);
    }
  }
}
