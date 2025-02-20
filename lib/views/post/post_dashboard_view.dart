import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:routing/views/dashboard/base_dashboard_view.dart';

@RoutePage()
class PostDashboardView extends StatelessWidget {
  const PostDashboardView({super.key});

  static const Color colour = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return BaseDashboardView(
      colour: colour,
      child: Center(
        child: Text(
          'Post',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
