
import 'package:pr2/domain/entity/role_entity.dart';
import 'package:pr2/domain/entity/users_entity.dart';

import '../../core/crypto/crypto.dart';


class Users extends UsersEntity{
  late int id;
  String FIO;
  String login;
  String password;
  final RoleEnum id_role;

  Users({required this.FIO, required this.login, required this.password, required this.id_role}) : super(FIO: FIO, login: login,password: password, id_role: id_role);

Map<String, dynamic> toMap() {
return {'FIO': FIO, 'login' : login, 'password' : Crypto.encoding(password), 'id_role' : id_role.id};
}

factory Users.toFromMap(Map<String, dynamic> json) {
return Users(FIO: json['FIO'], login: json['login'], password: json['password'], id_role: RoleEnum.values.firstWhere((element) => element.id == (json['id_role'] as int),
),
);
}
}  