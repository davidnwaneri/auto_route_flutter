import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:routing/app/app_router/app_router.gr.dart';
import 'package:routing/views/dashboard/home_dashboard_view.dart';
import 'package:routing/views/post/post_dashboard_view.dart';
import 'package:routing/views/profile/profile_view.dart';

// @RoutePage(name: 'DashboardRoute')
class DashboardRouteWrapper extends StatelessWidget {
  const DashboardRouteWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}

@RoutePage()
class DashboardScreen extends StatefulWidget implements AutoRouteWrapper  {
  const DashboardScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeDashboardRoute(),
        PostDashboardRoute(),
        ProfileDashboardRoute(),
      ],
      bottomNavigationBuilder: (BuildContext context, TabsRouter tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                color: tabsRouter.activeIndex == 0 ? HomeDashboardView.colour : Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Post',
              icon: Icon(
                Icons.post_add,
                color: tabsRouter.activeIndex == 1 ? PostDashboardView.colour : Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.person,
                color: tabsRouter.activeIndex == 2 ? ProfileView.colour : Colors.grey,
              ),
            ),
          ],
        );
      },
    );
  }
}
