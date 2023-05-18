import 'package:flutter/material.dart';
import 'package:vz_mid/models/daily_schedule.dart';
import 'package:vz_mid/ui/schedule_page/daily_schedule_widget.dart';

class Schedule extends StatelessWidget {
  const Schedule({
    super.key,
    required this.anim,
    required this.schedule,
  });

  final AnimationController anim;
  final List<DailySchedule> schedule;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Opacity(
        opacity: (anim.value.abs() - 0.75) * 4,
        child: Column(
          children: [
            for (var day in schedule)
              Flexible(
                child: DailyScheduleWidget(day: day),
              )
          ],
        ),
      ),
    );
  }
}
