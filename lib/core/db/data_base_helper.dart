import 'dart:io';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart';
import 'package:pr2/common/data_base_request.dart';
import 'package:pr2/data/model/cheque.dart';
import 'package:pr2/data/model/employee.dart';
import 'package:pr2/data/model/mark.dart';
import 'package:pr2/data/model/model.dart';
import 'package:pr2/data/model/orders.dart';
import 'package:pr2/data/model/role.dart';
import 'package:pr2/data/model/type.dart';
import 'package:pr2/data/model/users.dart';
import 'package:pr2/data/model/warehouse.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DataBaseHelper{
  static final DataBaseHelper instance = DataBaseHelper._instance();

  DataBaseHelper._instance();

  late final Directory _appDocumentDirectory;
  late final String _pathDB;
  late final Database database;
  final int _version = 1;

  Future<void> init() async{

    _appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();

    _pathDB = join(_appDocumentDirectory.path,'lscustoms.db');

    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {

   sqfliteFfiInit();
   database = await databaseFactoryFfi.openDatabase(_pathDB, options: OpenDatabaseOptions(
   version: _version,
   onUpgrade: (db,oldVersion,newVersion)=> onUpdateTable(db),

onCreate: (db, version) async {
await onCreateTable(db);
}

));

} else{
      database = await openDatabase(
        _pathDB,
        onUpgrade:(db, oldVersion, newVersion) => onUpdateTable(db),
        version: _version,

        onCreate: (db, version) async{
          await onCreateTable(db);
          
        },
      );
    }
  }

  Future<void> onUpdateTable(Database db) async{
    var tables = await db.rawQuery('SELECT name FROM sqlite_master');
    
    for(var table in DataBaseRequest.tableList){
      if(tables.contains(table)){
        await db.execute(DataBaseRequest.deleteTable(table));
      }
    }
     
     for(var i = 0; i< DataBaseRequest.tableList.length; i++)
    {
      await db.execute(DataBaseRequest.tableCreateList[i]);
    }

    await onInitTable(db);

  }

  Future<void> onCreateTable(Database db) async{
    for(var i = 0; i< DataBaseRequest.tableList.length; i++)
    {
      await db.execute(DataBaseRequest.tableCreateList[i]);
    }

    await onInitTable(db);
  }

  Future<void> onInitTable(Database db) async{
    try{
        db.insert(DataBaseRequest.tableRole2, Role(Name_Role: 'Администратор').toMap());
        db.insert(DataBaseRequest.tableRole2, Role(Name_Role: 'Пользователь').toMap());
        // db.insert(DataBaseRequest.tableEmployee, Employee(FIO: 'Адунов Адун Адунович', Passport: '1337 2281488', Phone: '88880007777', login: 'van', password: 'darkholme').toMap());
        // db.insert(DataBaseRequest.tableUsers, Users(FIO: 'Юзя Юзя Юзя', login: 'Use', password: 'Less',id_role: 1).toMap());
        // db.insert(DataBaseRequest.tableType, Type(name_type: 'Внедорожник').toMap());
        // db.insert(DataBaseRequest.tableModel, Model(Name_Model: 'RAV-4', type_id: 1).toMap());
        // db.insert(DataBaseRequest.tableMarka, Marka(Name_Mark: 'Toyota', model_id: 1).toMap());
        // db.insert(DataBaseRequest.tableOrders, Orders(employee_id: 1, model_id: 1, user_id: 1).toMap());
        // db.insert(DataBaseRequest.tableCheque, Cheque(Price: '2000000', TIN: '46463471397', order_id: 1).toMap());
        // db.insert(DataBaseRequest.tableWarehouse, Warehouse(Address: 'Ул. Гачи, д.69', mark_id: 1).toMap());
    }on DatabaseException catch(e){
    }
  }
}