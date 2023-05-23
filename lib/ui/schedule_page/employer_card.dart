import 'package:flutter/material.dart';
import 'package:vz_mid/models/employer.dart';
import 'package:vz_mid/ui/schedule_page/schedule.dart';

class EmployerCard extends StatefulWidget {
  const EmployerCard({
    super.key,
    required this.employer,
    required this.onEditTap,
  });

  final Employer employer;
  final VoidCallback onEditTap;

  @override
  State<EmployerCard> createState() => _EmployerCardState();
}

class _EmployerCardState extends State<EmployerCard>
    with TickerProviderStateMixin {
  late final AnimationController _anim;
  bool isSmall = true;

  @override
  void initState() {
    super.initState();
    _anim = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      lowerBound: -1,
      upperBound: -0.75,
    );
  }

  @override
  void didUpdateWidget(EmployerCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (isSmall) {
      _anim.reverse(from: _anim.value);
    } else {
      _anim.forward(from: _anim.value);
    }
  }

  @override
  void dispose() {
    _anim.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        setState(() {
          isSmall = !isSmall;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: isSmall ? 70 : 270,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  widget.employer.name,
                  style: theme.textTheme.titleMedium,
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: widget.onEditTap,
                ),
              ],
            ),
            Schedule(
              anim: _anim,
              schedule: widget.employer.schedule.schedule,
            )
          ],
        ),
      ),
    );
  }
}
