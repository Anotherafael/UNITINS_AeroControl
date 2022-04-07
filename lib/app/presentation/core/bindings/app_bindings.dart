import 'package:get/instance_manager.dart';

import '../../../data/services/airport_service_impl.dart';
import '../../../data/services/flight_service.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AirportServiceImpl());
    Get.put(FlightServiceImpl());
  }
}
