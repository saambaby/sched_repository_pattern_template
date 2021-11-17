// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'routes.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthenticationRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const Authentication());
    },
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const Splash());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        RouteConfig(AuthenticationRoute.name, path: '/auth', children: [
          RouteConfig('*#redirect',
              path: '*',
              parent: AuthenticationRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        RouteConfig(SplashRoute.name, path: '/splash')
      ];
}

/// generated route for [Authentication]
class AuthenticationRoute extends PageRouteInfo<void> {
  const AuthenticationRoute({List<PageRouteInfo>? children})
      : super(name, path: '/auth', initialChildren: children);

  static const String name = 'AuthenticationRoute';
}

/// generated route for [Splash]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/splash');

  static const String name = 'SplashRoute';
}
