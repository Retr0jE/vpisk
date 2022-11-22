import 'package:dartz/dartz.dart';

import '../../domain/entity/role_entity.dart';

abstract class AuthUserCase<String, Params,ParamsLogin> {
  Future<Either<String, RoleEnum>> signIn(ParamsLogin params);
  Future<Either<String, bool>> signUp(Params params);
}