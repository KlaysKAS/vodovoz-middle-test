abstract class Source {
  Future<List<Map<String, Object?>>> selectAllEmployer();

  Future<List<Map<String, Object?>>> insertEmployer(String name);

  Future<List<Map<String, Object?>>> selectSchedule(int employerID);

  Future<int> updateSchedule(int employerID, int day, int time);
}
