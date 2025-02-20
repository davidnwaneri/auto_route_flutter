import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routing/views/dashboard/bloc/notification_bloc.dart';

@RoutePage()
class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Settings',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                context.router.maybePop();
              },
              child: Text('Go to back to Profile'),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                final number = Random().nextInt(100);
                context.read<NotificationBloc>().add(InsertNotification('Notification $number'));
              },
              child: Text('Add notification'),
            ),
          ),
        ],
      ),
    );
  }
}
