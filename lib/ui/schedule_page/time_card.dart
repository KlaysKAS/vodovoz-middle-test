import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeCard extends StatelessWidget {
  final DateTime from;
  final DateTime to;

  const TimeCard({
    super.key,
    required this.from,
    required this.to,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '${DateFormat.Hm().format(from)}-'
            '${DateFormat.Hm().format(to)}',
          ),
        ),
      ),
    );
  }
}
