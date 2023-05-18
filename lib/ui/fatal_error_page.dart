import 'package:flutter/material.dart';

class FatalErrorPage extends StatelessWidget {
  final String msg;
  final VoidCallback onRetry;

  const FatalErrorPage({
    Key? key,
    required this.msg,
    required this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            msg,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('Повторить'),
          ),
        ],
      ),
    );
  }
}
