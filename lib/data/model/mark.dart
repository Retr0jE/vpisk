import 'package:pr2/domain/entity/mark_entity.dart';

class Marka extends MarkaEntity{
  late int id;
  String Name_Mark;
  int model_id;

  Marka({required this.Name_Mark, required this.model_id}) : super(Name_Mark: Name_Mark, model_id: model_id);

  Map<String, dynamic> toMap() {
return {'Name_Mark': Name_Mark, 'model_id' : model_id};
}

factory Marka.toFromMap(Map<String, dynamic> json) {
return Marka(Name_Mark: json['Name_Mark'], model_id: json['model_id']);
}
}