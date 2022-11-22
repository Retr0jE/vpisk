import 'package:pr2/domain/entity/type_entity.dart';

class Type extends TypeEntity{
  late int id;
  String name_type;

  Type({required this.name_type}) : super(name_type: name_type);

  Map<String, dynamic> toMap() {
return {'name_type': name_type};
}

factory Type.toFromMap(Map<String, dynamic> json) {
return Type(name_type: json['name_type']);
}
}