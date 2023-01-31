import 'dart:io';

import 'package:conduit/conduit.dart';
import 'package:first_dart/controllers/app_auth_controller.dart';
import 'package:first_dart/controllers/app_post_controller.dart';
import 'package:first_dart/controllers/app_posts_controller.dart';
import 'package:first_dart/controllers/app_user_controller.dart';

import 'controllers/app_token_controller.dart';

class AppService extends ApplicationChannel {
   late final ManagedContext managedContext;

   @override
   Future prepare(){
    final persistentStore = _initDatabase();

    managedContext = ManagedContext(ManagedDataModel.fromCurrentMirrorSystem(), persistentStore);
    return super.prepare();
   }
   
     @override
     // TODO: implement entryPoint
     Controller get entryPoint => Router()
     ..route('zachetki/[:id]')
       .link(AppTokenController.new)!
       .link(() => AppPostController(managedContext))!
       ..route('zasheki')
        .link(AppTokenController.new)!
       .link(() => AppNotesConttoller(managedContext))
      ..route('token/[:refresh]').link(
        () => AppAuthController(managedContext))
      ..route('user')
         .link(AppTokenController.new)!
         .link(() => AppUserConttolelr(managedContext));

     PersistentStore _initDatabase(){
      final username = Platform.environment['DB_USERNAME'] ?? 'postgres';
      final password = Platform.environment['DB_PASSWORD'] ?? '111';
      final host = Platform.environment['DB_HOST'] ?? '127.0.0.1';
      final port = int.parse(Platform.environment['DB_USERNAME'] ?? '5432');
      final databaseName = Platform.environment['DB_NAME'] ?? 'postgres';
      return PostgreSQLPersistentStore(username, password, host, port, databaseName);

     }





  
}
