import 'package:pr2/domain/entity/orders_entity.dart';

class Orders extends OrdersEntity{
  late int id;
  int user_id;
  int employee_id;
  int model_id;


  Orders({required this.user_id, required this.employee_id, required this.model_id}) : super(user_id: user_id, employee_id: employee_id, model_id: model_id);

  Map<String, dynamic> toMap() {
return {'user_id': user_id, 'employee_id' : employee_id, 'model_id' : model_id};
}

factory Orders.toFromMap(Map<String, dynamic> json) {
return Orders(user_id: json['user_id'], employee_id: json['employee_id'], model_id: json['model_id']);
}
}