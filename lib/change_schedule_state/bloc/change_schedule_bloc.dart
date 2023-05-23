import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vz_mid/change_schedule_state/bloc/change_schedule_events.dart';
import 'package:vz_mid/main.dart';
import 'package:vz_mid/models/employer.dart';
import 'package:vz_mid/models/time_interval.dart';

class ChangeScheduleBloc extends Bloc<ChangeScheduleEvents, Employer> {
  final _repo = locator.repository;

  ChangeScheduleBloc(super.employer) {
    on<AddInterval>(_addInterval);
    on<DeleteInterval>(_deleteInterval);
    on<SaveChanges>(_saveChanges);
  }

  void _addInterval(AddInterval event, Emitter<Employer> emit) {
    final oldSchedule = state.schedule.schedule.toList();
    oldSchedule[event.dayNumber].intervals.add(
          TimeInterval(from: event.from, to: event.to),
        );
    oldSchedule[event.dayNumber].intervals.sort(
          (a, b) => a.from.compareTo(b.from),
        );
    emit(
      state.copyWith(
        schedule: state.schedule.copyWith(
          schedule: oldSchedule,
        ),
      ),
    );
  }

  void _deleteInterval(DeleteInterval event, Emitter<Employer> emit) {
    final oldSchedule = state.schedule.schedule.toList();
    oldSchedule[event.dayNumber].intervals.remove(event.interval);
    emit(
      state.copyWith(
        schedule: state.schedule.copyWith(
          schedule: oldSchedule,
        ),
      ),
    );
  }

  Future<void> _saveChanges(SaveChanges event, Emitter<Employer> emit) async {
    for (var sch in state.schedule.schedule) {
      await _repo.changeSchedule(state.id, sch);
    }
    Fluttertoast.showToast(msg: 'Сохранено');
    emit(state.copyWith());
  }
}
