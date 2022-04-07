import 'package:dartz/dartz.dart';

import '../core/failures/server_failures.dart';
import '../entities/flight_entity.dart';

abstract class FlightService {
  Future<Either<ServerFailure, List<FlightEntity>>> fetchFlights();
}
