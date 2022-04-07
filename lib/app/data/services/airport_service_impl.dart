import 'package:dio/dio.dart';
import 'package:infraero_app/app/data/mocked_data/airports.dart';
import 'package:infraero_app/app/domain/entities/airport_entity.dart';

import 'package:infraero_app/app/domain/core/failures/server_failures.dart';

import 'package:dartz/dartz.dart';

import '../../domain/services/airport_service.dart';
import '../models/airport_model.dart';

class AirportServiceImpl implements AirportService {
  @override
  Future<Either<ServerFailure, List<AirportEntity>>> fetchAirports(
      int initial, int airports) async {
    try {
      final List<AirportEntity> airportList = [];

      for (var airport in mockAirports) {
        airportList.add(AirportModel.fromMap(airport).toEntity());
      }

      return right(airportList);
    } on DioError {
      return left(ServerFailure.serverError);
    }
  }
}
