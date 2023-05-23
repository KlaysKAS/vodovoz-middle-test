import 'package:vz_mid/models/schedule.dart';

class Employer {
  final int id;
  final String name;
  final Schedule schedule;

  const Employer({
    required this.id,
    required this.name,
    required this.schedule,
  });

  Employer copyWith({
    int? id,
    String? name,
    Schedule? schedule,
  }) {
    return Employer(
      id: id ?? this.id,
      name: name ?? this.name,
      schedule: schedule ?? this.schedule,
    );
  }
}
