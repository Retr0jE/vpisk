class RoleEntity {
  late int id;
  final String Name_Role;

  RoleEntity({required this.Name_Role});
}

enum RoleEnum { 
  admin(id: 1, name: 'Администратор'), 
  user(id: 2, name: 'Пользователь');

const RoleEnum({required this.id, required this.name});

final String name;
final int id;

}
