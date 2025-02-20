import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routing/views/dashboard/base_dashboard_view.dart';
import 'package:routing/views/dashboard/bloc/notification_bloc.dart';

@RoutePage()
class HomeDashboardView extends StatelessWidget {
  const HomeDashboardView({super.key});

  static const Color colour = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return BaseDashboardView(
      colour: colour,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Home',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          BlocBuilder<NotificationBloc, NotificationState>(
            builder: (context, state) {
              if (state is NotificationInitial) {
                return SizedBox();
              }

              if (state is NotificationLoading) {
                return CircularProgressIndicator();
              }

              if (state is NotificationLoaded) {
                return Text('Notifications: ${state.notifications}');
              } else {
                return Text('Error');
              }
            },
          )
        ],
      ),
    );
  }
}
