import 'package:vz_mid/models/daily_schedule.dart';
import 'package:vz_mid/models/employer.dart';

abstract class Repository {
  Future<List<Employer>> getEmployers();

  Future<Employer> addEmployer(String name);

  Future<DailySchedule> changeSchedule(int id, DailySchedule ds);
}
