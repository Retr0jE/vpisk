import 'package:pr2/domain/entity/employee_entity.dart';

class Employee extends EmployeeEntity{

  late int id;
 String FIO;
 String Passport;
 String Phone;
 String login;
 String password;


  Employee({required this.FIO, required this.Passport, required this.Phone, required this.login, required this.password}) : super(FIO: FIO, Passport: Passport, Phone: Phone, login: login, password: password);

Map<String, dynamic> toMap() {
return {'FIO': FIO, 'Passport' : Passport, 'Phone' : Phone,'login' : login, 'password' : password};
}

factory Employee.toFromMap(Map<String, dynamic> json) {
return Employee(FIO: json['FIO'], Passport: json['Passport'], Phone: json['Phone'],login: json['login'], password: json['password']);
}

}