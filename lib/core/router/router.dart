import 'package:auto_route/auto_route.dart';

import '../../features/auth/ui/login_page.dart';
import '../../features/auth/ui/splash_page.dart';
import '../../features/home/ui/home_page.dart';
import '../../features/home/ui/profile_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: LoginPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: ProfilePage),
  ],
)
class $AppRouter {}
