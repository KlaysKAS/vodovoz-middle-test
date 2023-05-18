import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vz_mid/sheduler_state/bloc/employer_bloc.dart';
import 'package:vz_mid/sheduler_state/bloc/employer_events.dart';
import 'package:vz_mid/sheduler_state/state/employer_state.dart';
import 'package:vz_mid/ui/fatal_error_page.dart';
import 'package:vz_mid/ui/schedule_page/employer_card.dart';

class EmployersCardList extends StatelessWidget {
  const EmployersCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployerBloc, EmployerState>(builder: (context, state) {
      EmployerState prevState = state;
      Widget? widget;
      while (widget == null) {
        prevState.map(
          loading: (_) {
            widget = const Center(
              child: CircularProgressIndicator(),
            );
          },
          fatalError: (fatal) {
            widget = FatalErrorPage(
              msg: fatal.msg,
              onRetry: () => context.read<EmployerBloc>().add(
                    ReloadEmployers(),
                  ),
            );
          },
          error: (error) {
            Fluttertoast.showToast(msg: error.msg);
            prevState = error.lastState;
          },
          success: (result) {
            widget = ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return EmployerCard(
                  employer: result.employers[index],
                  onEditTap: () {},
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
              itemCount: result.employers.length,
            );
          },
        );
      }
      return widget!;
    });
  }
}
