import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:jig_racing/features/auth/cubit/auth_cubit.dart';
import 'package:jig_racing/features/auth/view/pages/create_account_page.dart';
import 'package:jig_racing/features/auth/view/pages/login_page.dart';
import 'package:jig_racing/features/home/view/home_page.dart';
import 'package:jig_racing/routers/router.dart';

import '../core/views/views.dart';

@lazySingleton
class AppRouters {

  final AuthCubit _authCubit;

  AppRouters(this._authCubit);

  late final router = GoRouter(
    refreshListenable: GoRouterRefreshStream(_authCubit.stream),
    debugLogDiagnostics: kDebugMode ? true : false,
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        name: AppRouterName.root,
        path: '/',
        redirect: (state) =>
            state.namedLocation(AppRouterName.home),
      ),
      GoRoute(
        name: AppRouterName.login,
        path: '/${AppRouterName.login}',
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        name: AppRouterName.createAccount,
        path: '/${AppRouterName.createAccount}',
        builder: (context, state) => CreateAccountPage(),
      ),
      GoRoute(
        name: AppRouterName.home,
        path: '/${AppRouterName.home}',
        builder: (context, state) {
          return HomePage();
        },
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: const ErrorPage(),
    ),
    // redirect to the login page if the user is not logged in
    redirect: (state) {
      final loggingIn = state.subloc == "/${AppRouterName.login}";
      final creatingAccount = state.subloc == "/${AppRouterName.createAccount}";
      final loggedIn = _authCubit.state.authState == AuthStateEnum.authenticated;
      if (!loggedIn && !loggingIn && !creatingAccount) return "/${AppRouterName.login}";
      if (loggedIn && (loggingIn || creatingAccount)) return "/";
      return null;
    },
  );

}