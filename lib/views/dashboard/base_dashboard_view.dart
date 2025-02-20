import 'package:flutter/material.dart';

class BaseDashboardView extends StatelessWidget {
  const BaseDashboardView({
    required this.colour,
    required this.child,
    super.key,
  });

  final Color colour;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colour,
      child: child,
    );
  }
}
