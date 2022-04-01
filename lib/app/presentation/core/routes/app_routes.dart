import 'package:get/get.dart';
import 'package:infraero_app/app/presentation/modules/airport_list/airport_list.dart';

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
        GetPage(
          name: '/airport_list',
          page: () => AirportListPage(),
        ),
      ];
}
