import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routing/app/app_router/app_router.gr.dart';
import 'package:routing/views/dashboard/bloc/notification_bloc.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page|View,Route')
class AppRouter extends RootStackRouter {
  final _profileRouter = ProfileRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/welcome',
          initial: true,
          page: WelcomeRoute.page,
        ),
        CustomRoute(
          path: '/dashboard',
          page: DashboardRoute.page,
          customRouteBuilder: <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
            return PageRouteBuilder<T>(
              fullscreenDialog: page.fullscreenDialog,
              settings: page,
              pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
                return BlocProvider(
                  create: (BuildContext context) => NotificationBloc(),
                  child: child,
                );
              },
            );
          },
          children: [
            AutoRoute(
              path: 'home',
              page: HomeDashboardRoute.page,
            ),
            AutoRoute(
              path: 'posts',
              page: PostDashboardRoute.page,
            ),
            AutoRoute(
              path: 'profile',
              page: ProfileDashboardRoute.page,
              children: [
                ..._profileRouter.routes,
              ],
            ),
          ],
        ),
      ];
}

@AutoRouterConfig(
  replaceInRouteName: 'Screen|Page|View,Route',
  generateForDir: ['lib/views/profile'],
)
class ProfileRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '',
          page: ProfileRoute.page,
        ),
        CustomRoute(
          path: 'settings',
          page: SettingsRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
      ];
}

const booksTab = EmptyShellRoute('BooksTab');
