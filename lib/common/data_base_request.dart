class DataBaseRequest{
  /// Таблица Роли
  ///
  /// Поля таблицы: Название роли

  static const String tableRole2 = 'Role';

    static const String tableEmployee = 'Employee';

    static const String tableOrders = 'Orders';
    static const String tableCheque = 'Cheque';
    static const String tableMarka = 'Marka';
    static const String tableModel = 'Model';
    static const String tableType = 'Type';
    static const String tableWarehouse = 'Warehouse';


  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль
  static const String tableUsers = 'Users';

  static const List<String> tableList = [
     tableRole2,
     tableUsers,
     tableEmployee,
     tableType,
     tableModel,
     tableOrders,
     tableCheque,
     tableMarka,
     tableWarehouse
  ];

  static const List<String> tableCreateList = [
    _createTableRole2,
    _createTableUsers,
    _createTableEmployee,
    _createTableType,
    _createTableModel,
    _createTableOrders,
    _createTableCheque,
    _createTableMarka,
    _createTableWarehouse,
    
  ];





  /// Запросы для создания таблицы
   static const String _createTableRole2 = 
      'CREATE TABLE "$tableRole2" ("ID_Role" INTEGER NOT NULL, "Name_Role" VARCHAR(50), PRIMARY KEY ("ID_Role" AUTOINCREMENT))';
  static const String _createTableUsers =
      'CREATE TABLE "$tableUsers" ("id" INTEGER,"FIO" TEXT NOT NULL, "login" TEXT NOT NULL,"password" TEXT NOT NULL,"id_role" INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("ID_Role"),PRIMARY KEY("id"))';
      static const String _createTableEmployee =
      'CREATE TABLE "$tableEmployee" ("id" INTEGER,"FIO" TEXT NOT NULL,"Passport" TEXT NOT NULL,"Phone" TEXT NOT NULL,"login" TEXT NOT NULL, "password" TEXT NOT NULL,PRIMARY KEY("id"))';
      static const String _createTableType =
      'CREATE TABLE "$tableType" ("id" INTEGER,"name_type" TEXT NOT NULL UNIQUE,PRIMARY KEY("id"))';
      static const String _createTableModel =
      'CREATE TABLE "$tableModel" ("id" INTEGER,"Name_Model" TEXT NOT NULL,"type_id" INTEGER,FOREIGN KEY("type_id") REFERENCES "Type"("id"),PRIMARY KEY("id"))';
static const String _createTableOrders =
      'CREATE TABLE "$tableOrders" ("id" INTEGER,"user_id" INTEGER, "employee_id" INTEGER, "model_id" INTEGER,FOREIGN KEY("model_id") REFERENCES "Model"("id"), FOREIGN KEY("user_id") REFERENCES "Users"("id"), FOREIGN KEY("employee_id") REFERENCES "Employee"("id"), PRIMARY KEY("id"))';
      
      
      static const String _createTableCheque =
      'CREATE TABLE "$tableCheque" ("id" INTEGER,"TIN" TEXT NOT NULL UNIQUE,"price" TEXT NOT NULL,"order_id" INTEGER,FOREIGN KEY("order_id") REFERENCES "Orders"("id"),PRIMARY KEY("id"))';
      static const String _createTableMarka =
      'CREATE TABLE "$tableMarka" ("id" INTEGER,"Name_Mark" TEXT NOT NULL,"model_id" INTEGER,FOREIGN KEY("model_id") REFERENCES "Model"("id"),PRIMARY KEY("id"))';
      
      
      static const String _createTableWarehouse =
      'CREATE TABLE "$tableWarehouse" ("id" INTEGER,"Address" TEXT NOT NULL,"mark_id" INTEGER,FOREIGN KEY("mark_id") REFERENCES "Marka"("id"),PRIMARY KEY("id"))';
      

  static String deleteTable(String table) => 'DROP TABLE $table';
}