import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:routing/app/app_router/app_router.gr.dart';

@RoutePage()
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  static const Color colour = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colour,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Profile',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                context.router.push(SettingsRoute());
              },
              child: Text('Go to Settings'),
            ),
          ),
        ],
      ),
    );
  }
}
