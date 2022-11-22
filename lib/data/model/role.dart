import 'package:pr2/domain/entity/role_entity.dart';

class Role extends RoleEntity {

Role({required super.Name_Role});

Map<String, dynamic> toMap() {
return {'Name_Role': Name_Role};
}

factory Role.toFromMap(Map<String, dynamic> json) {
return Role(Name_Role: json['Name_Role']);
}
}