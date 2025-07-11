
import 'package:flutter/material.dart';

class DeleteAlarmTextWidget extends StatelessWidget {
  const DeleteAlarmTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.delete_outline_outlined, color: Colors.red),
        const SizedBox(width: 10),
        Text(
          'Delete The Alarm',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
