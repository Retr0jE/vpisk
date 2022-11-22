import 'package:pr2/domain/entity/model_entity.dart';

class Model extends ModelEntity{
late int id;
  String Name_Model;
  int type_id;

  Model({required this.Name_Model, required this.type_id}) : super(Name_Model: Name_Model, type_id: type_id);

Map<String, dynamic> toMap() {
return {'Name_Model': Name_Model, 'type_id' : type_id};
}

factory Model.toFromMap(Map<String, dynamic> json) {
return Model(Name_Model: json['Name_Model'], type_id: json['type_id']);
}
}