import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileDashboardView extends StatelessWidget {
  const ProfileDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
