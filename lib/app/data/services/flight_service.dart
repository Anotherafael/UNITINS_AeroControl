import 'package:aero_control/app/data/mocked_data/flights.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/core/failures/server_failures.dart';
import '../../domain/entities/flight_entity.dart';
import '../../domain/services/flight_service.dart';
import '../models/flight_model.dart';

class FlightServiceImpl implements FlightService {
  @override
  Future<Either<ServerFailure, List<FlightEntity>>> fetchFlights() async {
    try {
      final List<FlightEntity> flightList = [];

      for (var flight in mockFlights) {
        flightList.add(FlightModel.fromMap(flight).toEntity());
      }

      return right(flightList);
    } on DioError {
      return left(ServerFailure.serverError);
    }
  }
}
