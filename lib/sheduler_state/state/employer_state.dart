import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vz_mid/models/employer.dart';

part 'employer_state.freezed.dart';

@freezed
class EmployerState with _$EmployerState {
  const factory EmployerState.loading() = Loading;
  const factory EmployerState.fatalError(String msg) = FatalError;
  factory EmployerState.error(String msg, EmployerState lastState) = Error;
  factory EmployerState.success(List<Employer> employers) = Success;
}
