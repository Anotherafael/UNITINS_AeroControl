import 'package:aero_control/app/data/mocked_data/companies.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/core/failures/server_failures.dart';
import '../../domain/entities/company_entity.dart';
import '../../domain/services/company_service.dart';
import '../models/company_model.dart';

class CompanyServiceImpl implements CompanyService {
  @override
  Future<Either<ServerFailure, List<CompanyEntity>>> fetchCompanies() async {
    try {
      final List<CompanyEntity> companyList = [];

      for (var company in mockCompanies) {
        companyList.add(CompanyModel.fromMap(company).toEntity());
      }

      return right(companyList);
    } on DioError {
      return left(ServerFailure.serverError);
    }
  }
}
