import 'package:dartz/dartz.dart';

import '../../core/usecases/auth_user_case.dart';
import '../entity/role_entity.dart';
import '../repositories/auth_repositories.dart';

class Auth implements AuthUserCase<String, AuthParams, AuthParamsLogin>{
   final AuthRepositories authRepositories;

   Auth(this.authRepositories);

  @override
  Future<Either<String, RoleEnum>> signIn(AuthParamsLogin params) {
        return authRepositories.signIn(params.login, params.password);
  }

  @override
  Future<Either<String, bool>> signUp(AuthParams params) {
    return authRepositories.signUp(params.FIO, params.login, params.password);
  }


}

class AuthParamsLogin{
   final String login;
  final String password;
  AuthParamsLogin({
    required this.login,
  required this.password,
  });
}

class AuthParams{
  final String FIO;
  final String login;
  final String password;

  AuthParams({
    required this.FIO,
    required this.login,
    required this.password,});

}