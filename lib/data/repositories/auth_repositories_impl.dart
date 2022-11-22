import 'package:dartz/dartz.dart';
import 'package:sqflite/sqflite.dart';

import '../../common/data_base_request.dart';
import '../../core/crypto/crypto.dart';
import '../../core/db/data_base_helper.dart';
import '../../domain/entity/role_entity.dart';
import '../../domain/repositories/auth_repositories.dart';
import '../model/users.dart';

class AuthRepositoriesImpl implements AuthRepositories {
  final _db = DataBaseHelper.instance.database;

  @override
  // TODO: implement table
  String get table =>  DataBaseRequest.tableUsers;

  @override
  Future<Either<String, RoleEnum>> signIn(String login, String password) async {
    try {
      final user = (await _db.query(
        table,
        columns: ['login', 'password', 'id_role','FIO'],
        where: 'login = ?',
        whereArgs: [login],
      )).map((e) => Users.toFromMap(e));

       if(user.isEmpty){
        return Left('Нету, увы');
       }
       if(user.first.password != Crypto.encoding(password)){
                return Left('Хорошая попытка, неправильный пароль');
       }

       return Right(user.first.id_role);

    } on DatabaseException catch (error) {
      print(error.result);
      return Left('нубчик');
    }
  }

  @override
  Future<Either<String, bool>> signUp(String FIO, String login, String password) async {
    try {
      await _db.insert(
        table,
        Users(FIO: FIO, login: login, password: password, id_role: RoleEnum.admin).toMap(),
      );

      return Right(true);
    } on DatabaseException catch (error) {
      print(error.result);
      return const Left('нубчик');
    }
  }
}

