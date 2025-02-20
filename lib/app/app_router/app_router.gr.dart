// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:routing/views/dashboard/dashboard_screen.dart' as _i1;
import 'package:routing/views/dashboard/home_dashboard_view.dart';
import 'package:routing/views/post/post_dashboard_view.dart' as _i2;
import 'package:routing/views/profile/profile_dashboard_view.dart' as _i3;
import 'package:routing/views/profile/profile_view.dart' as _i4;
import 'package:routing/views/profile/settings_view.dart' as _i5;
import 'package:routing/views/welcome/welcome_screen.dart' as _i6;

/// generated route for
/// [_i1.DashboardScreen]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return _i7.WrappedRoute(child: const _i1.DashboardScreen());
    },
  );
}

/// generated route for
/// [HomeDashboardView]
class HomeDashboardRoute extends _i7.PageRouteInfo<void> {
  const HomeDashboardRoute({List<_i7.PageRouteInfo>? children})
    : super(HomeDashboardRoute.name, initialChildren: children);

  static const String name = 'HomeDashboardRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const HomeDashboardView();
    },
  );
}

/// generated route for
/// [_i2.PostDashboardView]
class PostDashboardRoute extends _i7.PageRouteInfo<void> {
  const PostDashboardRoute({List<_i7.PageRouteInfo>? children})
    : super(PostDashboardRoute.name, initialChildren: children);

  static const String name = 'PostDashboardRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.PostDashboardView();
    },
  );
}

/// generated route for
/// [_i3.ProfileDashboardView]
class ProfileDashboardRoute extends _i7.PageRouteInfo<void> {
  const ProfileDashboardRoute({List<_i7.PageRouteInfo>? children})
    : super(ProfileDashboardRoute.name, initialChildren: children);

  static const String name = 'ProfileDashboardRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProfileDashboardView();
    },
  );
}

/// generated route for
/// [_i4.ProfileView]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.ProfileView();
    },
  );
}

/// generated route for
/// [_i5.SettingsView]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute({List<_i7.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.SettingsView();
    },
  );
}

/// generated route for
/// [_i6.WelcomeScreen]
class WelcomeRoute extends _i7.PageRouteInfo<void> {
  const WelcomeRoute({List<_i7.PageRouteInfo>? children})
    : super(WelcomeRoute.name, initialChildren: children);

  static const String name = 'WelcomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.WelcomeScreen();
    },
  );
}
