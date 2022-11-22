import 'package:pr2/domain/entity/cheque_entity.dart';

class Cheque extends ChequeEntity{

  late int id;
  String TIN;
  String Price;
  int order_id;

   Cheque({required this.TIN, required this.Price, required this.order_id}) : super(TIN: TIN, Price: Price, order_id: order_id);

   Map<String, dynamic> toMap() {
return {'TIN': TIN, 'Price' : Price, 'order_id' : order_id};
}

factory Cheque.toFromMap(Map<String, dynamic> json) {
return Cheque(TIN: json['TIN'], Price: json['Price'], order_id: json['order_id']);
}
}