import 'package:vz_mid/db/helper.dart';
import 'package:vz_mid/db/tables.dart';
import 'package:vz_mid/repository/repository.dart';
import 'package:vz_mid/repository/schedule_repository.dart';
import 'package:vz_mid/service_locator/locator.dart';

class AppLocator implements Locator {
  @override
  late final Repository repository;

  @override
  Future<void> init() async {
    final db = DBHelper(EmployerTable(), ScheduleTable());
    await db.open();

    repository = ScheduleRepository(db);
  }
}
