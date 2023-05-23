import 'package:vz_mid/models/time_interval.dart';

sealed class ChangeScheduleEvents {}

class AddInterval extends ChangeScheduleEvents {
  final DateTime from;
  final DateTime to;
  final int dayNumber;

  AddInterval(this.from, this.to, this.dayNumber);
}

class DeleteInterval extends ChangeScheduleEvents {
  final TimeInterval interval;
  final int dayNumber;

  DeleteInterval(this.interval, this.dayNumber);
}

class SaveChanges extends ChangeScheduleEvents {}
