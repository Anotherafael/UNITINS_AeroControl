import 'package:get/get.dart';
import '../../modules/airport_list/airport_list_page.dart';
import '../../modules/flight_list/flight_list_page.dart';
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
        GetPage(
          name: '/flight_list',
          page: () => FlightListPage(),
        ),
      ];
}
