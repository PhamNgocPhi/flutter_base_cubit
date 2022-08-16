import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:jig_racing/di/injection.dart';
import 'package:jig_racing/generated/l10n.dart';
import 'package:jig_racing/routers/app_routers.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routeInformationParser: locator.get<AppRouters>().router.routeInformationParser,
      routerDelegate: locator.get<AppRouters>().router.routerDelegate,
      routeInformationProvider: locator.get<AppRouters>().router.routeInformationProvider,
    );
  }
}
