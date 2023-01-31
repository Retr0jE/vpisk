import 'dart:async';

import 'package:first_dart/first_dart.dart' as first_dart;
import 'dart:io';
import 'package:conduit/conduit.dart';
import 'package:first_dart/first_dart.dart';
void main(List<String> arguments) async {
  
  final port = int.parse(Platform.environment["PORT"] ?? '8888');
  
  final service = Application<AppService>()
     ..options.port = port;
     await service.start(numberOfInstances: 3, consoleLogging: true);

}
