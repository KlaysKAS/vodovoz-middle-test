import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vz_mid/main.dart';

import 'package:vz_mid/sheduler_state/bloc/employer_events.dart';
import 'package:vz_mid/sheduler_state/state/employer_state.dart';

class EmployerBloc extends Bloc<EmployerEvent, EmployerState> {
  final _repo = locator.repository;

  EmployerBloc() : super(const EmployerState.loading()) {
    on<ReloadEmployers>(_reload);
    on<AddNewEmployer>(_addNew);
  }

  Future<void> _reload(
    ReloadEmployers event,
    Emitter<EmployerState> emit,
  ) async {
    emit(const EmployerState.loading());
    try {
      final data = await _repo.getEmployers();
      emit(EmployerState.success(data));
    } catch (e, s) {
      emit(const EmployerState.fatalError('Что-то пошло не так'));
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> _addNew(
    AddNewEmployer event,
    Emitter<EmployerState> emit,
  ) async {
    try {
      final newEmployer = await _repo.addEmployer(event.name);
      state.mapOrNull(
        success: (successState) {
          emit(
            successState.copyWith(
              employers: successState.employers..add(newEmployer),
            ),
          );
        },
      );
    } catch (e, s) {
      final curState = state;
      emit(EmployerState.error('Не удалось добавить работника', curState));
      emit(curState);
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }
}
