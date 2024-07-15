import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Notifications",
                style: Theme.of(context).textTheme.headlineSmall),
          ],
        )
      ],
    );
  }
}
