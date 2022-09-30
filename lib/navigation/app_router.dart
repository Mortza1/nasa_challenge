import 'package:flutter/material.dart';
import 'package:nasa_murtaza/models/app_state-manager.dart';
import 'package:nasa_murtaza/models/nasaPages.dart';
import 'package:nasa_murtaza/screens/login.dart';
import 'package:nasa_murtaza/screens/splash_screen.dart';
import 'package:nasa_murtaza/screens/home.dart';

class AppRouter extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final AppStateManager appStateManager;

  AppRouter({required this.appStateManager})
      : navigatorKey = GlobalKey<NavigatorState>() {
    appStateManager.addListener(notifyListeners);
  }

  @override
  void dispose() {
    appStateManager.removeListener(notifyListeners);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: _handlePopPage,
      pages: [if (!appStateManager.isInitialized) SplashScreen.page(), if(appStateManager.isInitialized)Home.page(),
    ]
    );
  }

  bool _handlePopPage(Route<dynamic> route, result) {
    if (!route.didPop(result)) {
      return false;
    }
    if (route.settings.name == NasaPages.registerPage) {
      appStateManager.goBackRegister();
    }

    return true;
  }

  @override
  Future<void> setNewRoutePath(configuration) async => null;
}
