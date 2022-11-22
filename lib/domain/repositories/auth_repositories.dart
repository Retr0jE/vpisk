import 'package:dartz/dartz.dart';

import '../entity/role_entity.dart';

abstract class AuthRepositories{
  //название таблицы
  String get table;

  //Авторизация пользователя
 Future<Either<String,RoleEnum>> signIn(String login, String password);

 //Регистрация пользователя
 Future<Either<String, bool>> signUp(String FIO, String login, String password);

}