import 'package:dartz/dartz.dart';

import '../core/failures/server_failures.dart';
import '../entities/airport_entity.dart';

abstract class AirportService {
  Future<Either<ServerFailure, List<AirportEntity>>> fetchAirports(
      int initial, int airports);
}
