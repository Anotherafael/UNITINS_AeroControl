import 'package:dartz/dartz.dart';

import '../core/failures/server_failures.dart';
import '../entities/company_entity.dart';

abstract class CompanyService {
  Future<Either<ServerFailure, List<CompanyEntity>>> fetchCompanies();
}
