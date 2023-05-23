import 'package:flutter/material.dart';
import 'package:vz_mid/constants.dart';
import 'package:vz_mid/models/daily_schedule.dart';
import 'package:vz_mid/ui/schedule_page/time_card.dart';

class DailyScheduleWidget extends StatelessWidget {
  final DailySchedule day;

  const DailyScheduleWidget({
    super.key,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: Text(
            Constants.days[day.dayNumber]!,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: day.intervals
                .map(
                  (e) => TimeCard(from: e.from, to: e.to),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
