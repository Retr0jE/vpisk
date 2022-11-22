import 'package:pr2/domain/entity/warehouse_entity.dart';

class Warehouse extends WarehouseEntity{
  late int id;
  String Address;
  int mark_id;

  Warehouse({required this.Address, required this.mark_id}) : super(Address: Address, mark_id: mark_id);

Map<String, dynamic> toMap() {
return {'Address': Address, 'mark_id' : mark_id};
}

factory Warehouse.toFromMap(Map<String, dynamic> json) {
return Warehouse(Address: json['Address'], mark_id: json['mark_id']);
}
}