import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vz_mid/sheduler_state/bloc/employer_bloc.dart';
import 'package:vz_mid/sheduler_state/bloc/employer_events.dart';
import 'package:vz_mid/ui/schedule_page/add_new_enty_dialog.dart';
import 'package:vz_mid/ui/schedule_page/employer_card_list.dart';

class EmployerList extends StatefulWidget {
  const EmployerList({Key? key}) : super(key: key);

  @override
  State<EmployerList> createState() => _EmployerListState();
}

class _EmployerListState extends State<EmployerList>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Builder(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(
          titleTextStyle: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
          title: const Text('Расписание'),
          backgroundColor: theme.colorScheme.primary,
          actions: [
            IconButton(
              onPressed: () => _startNewEmployerDialog(
                ctx,
                (String name) {
                  context.read<EmployerBloc>().add(
                        AddNewEmployer(name),
                      );
                },
              ),
              icon: Icon(
                Icons.add,
                color: theme.colorScheme.onPrimary,
              ),
              color: theme.colorScheme.onPrimary,
            ),
          ],
        ), //AddNewEntryDialog
        body: const EmployersCardList(),
      );
    });
  }

  void _startNewEmployerDialog(
      BuildContext ctx, void Function(String) onConfirm) {
    showDialog(
      context: ctx,
      builder: (context) {
        return AddNewEntryDialog(onConfirm: onConfirm);
      },
    );
  }
}
