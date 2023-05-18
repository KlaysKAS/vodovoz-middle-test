import 'package:vz_mid/models/employer.dart';
import 'package:vz_mid/repository/mappers/schedule.dart';

class EmployerMapper {
  static Employer fromData(
      int id, String name, List<Map<String, Object?>> scheduleData) {
    return Employer(
      id: id,
      name: name,
      schedule: ScheduleMapper.fromSchData(id, scheduleData),
    );
  }
}
