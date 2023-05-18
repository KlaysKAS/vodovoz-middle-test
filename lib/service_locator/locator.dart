import 'package:vz_mid/repository/repository.dart';

abstract class Locator {
  abstract final Repository repository;

  Future<void> init();
}
