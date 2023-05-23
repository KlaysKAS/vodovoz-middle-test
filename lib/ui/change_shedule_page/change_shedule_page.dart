import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:vz_mid/constants.dart';
import 'package:vz_mid/models/daily_schedule.dart';
import 'package:vz_mid/models/employer.dart';

class ChangeSchedulePage extends StatefulWidget {
  final Employer employer;

  const ChangeSchedulePage({Key? key, required this.employer})
      : super(key: key);

  @override
  State<ChangeSchedulePage> createState() => _ChangeSchedulePageState();
}

class _ChangeSchedulePageState extends State<ChangeSchedulePage>
    with TickerProviderStateMixin {
  late final tabController = TabController(length: 7, vsync: this);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: const Icon(Icons.arrow_back),
          color: theme.colorScheme.onPrimary,
        ),
        title: Text(
          widget.employer.name,
          style: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.save),
            color: theme.colorScheme.onPrimary,
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          labelColor: theme.colorScheme.onPrimary,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(text: Constants.daysShort[0]),
            Tab(text: Constants.daysShort[1]),
            Tab(text: Constants.daysShort[2]),
            Tab(text: Constants.daysShort[3]),
            Tab(text: Constants.daysShort[4]),
            Tab(text: Constants.daysShort[5]),
            Tab(text: Constants.daysShort[6]),
          ],
        ),
        backgroundColor: theme.colorScheme.primary,
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ScheduleChangeTab(schedule: widget.employer.schedule.schedule[0]),
          ScheduleChangeTab(schedule: widget.employer.schedule.schedule[1]),
          ScheduleChangeTab(schedule: widget.employer.schedule.schedule[2]),
          ScheduleChangeTab(schedule: widget.employer.schedule.schedule[3]),
          ScheduleChangeTab(schedule: widget.employer.schedule.schedule[4]),
          ScheduleChangeTab(schedule: widget.employer.schedule.schedule[5]),
          ScheduleChangeTab(schedule: widget.employer.schedule.schedule[6]),
        ],
      ),
    );
  }
}

class ScheduleChangeTab extends StatelessWidget {
  final DailySchedule schedule;

  const ScheduleChangeTab({Key? key, required this.schedule}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Center(
            child: Text(Constants.days[schedule.dayNumber] ?? ''),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (_, int index) => InkWell(
                onTap: () => Fluttertoast.showToast(msg: '$index'),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: Stack(
                    children: [
                      const Center(
                        child: Divider(),
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border.fromBorderSide(
                              BorderSide(color: Colors.black),
                            ),
                            shape: BoxShape.circle,
                            color: Theme.of(context).colorScheme.background,
                          ),
                          child: IconButton(
                            onPressed: () {
                              String msg = '';
                              if (index == 0) {
                                msg = '00:00'
                                    ' - '
                                    '${DateFormat.Hm().format(schedule.intervals[index].from)}';
                              } else if (index == schedule.intervals.length) {
                                msg =
                                    '${DateFormat.Hm().format(schedule.intervals[index - 1].to)}'
                                    ' - '
                                    '00:00';
                              } else {
                                msg =
                                    '${DateFormat.Hm().format(schedule.intervals[index - 1].to)}'
                                    ' - '
                                    '${DateFormat.Hm().format(schedule.intervals[index].from)}';
                              }
                              Fluttertoast.showToast(msg: '$msg $index');
                            },
                            icon: const Icon(Icons.add_outlined),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              itemBuilder: (BuildContext context, int index) {
                if (schedule.intervals.length + 1 == index || index == 0) {
                  return const ListTile(
                    title: SizedBox(
                      height: 40,
                    ),
                  );
                }
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '${DateFormat.Hm().format(schedule.intervals[index - 1].from)}'
                      ' - '
                      '${DateFormat.Hm().format(schedule.intervals[index - 1].to)}',
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: 'Delete: '
                              '${DateFormat.Hm().format(schedule.intervals[index - 1].from)}'
                              ' - '
                              '${DateFormat.Hm().format(schedule.intervals[index - 1].to)}');
                    },
                    icon: const Icon(Icons.highlight_remove_outlined),
                    color: Colors.redAccent,
                  ),
                );
              },
              itemCount: schedule.intervals.length + 2,
            ),
          ),
        ],
      ),
    );
  }
}
