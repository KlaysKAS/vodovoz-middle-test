import 'package:flutter/material.dart';

class AddNewEntryDialog extends StatefulWidget {
  final void Function(String) onConfirm;

  const AddNewEntryDialog({
    Key? key,
    required this.onConfirm,
  }) : super(key: key);

  @override
  State<AddNewEntryDialog> createState() => _AddNewEntryDialogState();
}

class _AddNewEntryDialogState extends State<AddNewEntryDialog> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _textController,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                widget.onConfirm(_textController.text);
                Navigator.of(context).pop();
              },
              child: const Text('Подтвердить'),
            ),
          ],
        ),
      ),
    );
  }
}
