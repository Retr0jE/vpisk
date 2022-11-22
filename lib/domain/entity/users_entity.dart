import 'package:pr2/domain/entity/role_entity.dart';

class UsersEntity {
  late int id;
  String FIO;
  String login;
  String password;
  final RoleEnum id_role;


  UsersEntity({required this.FIO, required this.login, required this.password, required this.id_role});
}