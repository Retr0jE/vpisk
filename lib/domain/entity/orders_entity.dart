class OrdersEntity {
  late int id;
  int user_id;
  int employee_id;
  int model_id;


  OrdersEntity({required this.user_id, required this.employee_id, required this.model_id});
}