import 'package:get/get.dart';

import '../../modules/home/home_page.dart';
import '../../modules/splash/splash_page.dart';

class AppRoutes {
  static String get initialRoute => '/';

  static List<GetPage> get pages => [
        GetPage(
          name: '/',
          page: () => const SplashPage(),
        ),
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
      ];
}
