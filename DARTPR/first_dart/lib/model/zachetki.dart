import 'package:conduit/conduit.dart';

class Zachetki extends ManagedObject<_Zachetki> implements _Zachetki{}

class _Zachetki{
  @primaryKey
  int? id;
  @Column(indexed: true)
  String? Name;
  @Column(indexed: true)
  String? Description;
  @Column(indexed: true)
  String? Category;
  @Column(nullable: true)
  String? CreationDate;
  @Column(nullable: true)
  String? ChangeDate;
}