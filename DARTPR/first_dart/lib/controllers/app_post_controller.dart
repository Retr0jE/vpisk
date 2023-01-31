import 'dart:io';

import 'package:conduit/conduit.dart';
import 'package:first_dart/model/zachetki.dart';

import '../utils/app_response.dart';
import '../utils/app_utils.dart';

class AppPostController extends ResourceController{
  AppPostController(this.managedContext);

  final ManagedContext managedContext;


  @Operation.put()
  Future<Response> updateNote(
    @Bind.header(HttpHeaders.authorizationHeader) String header,
    @Bind.body() Zachetki zazheki,
  ) async {
    try {
      // Получаем id пользователя
      // Была создана новая функция ее нужно реализоваться для просмотра функции нажмите на картинку
      final id = zazheki.id;
      // Получаем данные пользователя по его id
      final fNote = await managedContext.fetchObjectWithID<Zachetki>(id);
      // Запрос для обновления данных пользователя
      final qUpdateUser = Query<Zachetki>(managedContext)
        ..where((element) => element.id)
            .equalTo(id) // Поиск пользователя осущетсвляется по id
        ..values.Name = 
            zazheki.Name ?? fNote!.Name
        ..values.Description =
            zazheki.Description ?? fNote!.Description
        ..values.CreationDate =
            zazheki.CreationDate ?? fNote!.CreationDate
        ..values.ChangeDate =
            zazheki.ChangeDate ?? fNote!.ChangeDate
        ..values.Category = 
            zazheki.Category ?? fNote!.Category;
      // Вызов функция для обновления данных пользователя
      await qUpdateUser.updateOne();
      // Получаем обновленного пользователя
      final findUser = await managedContext.fetchObjectWithID<Zachetki>(id);
      // Удаляем не нужные параметры для красивого вывода данных пользователя
      findUser!.removePropertiesFromBackingMap(['refreshToken', 'accessToken']);

      return AppResponse.ok(
        message: 'Успешное обновление данных',
        body: findUser.backing.contents,
      );
    } catch (e) {
      return AppResponse.serverError(e, message: 'Ошибка обновление данных');
    }
  }


  @Operation.post()
Future<Response> createPost(
@Bind.header(HttpHeaders.authorizationHeader) String header,
@Bind.body() Zachetki zazheki) async {
try {
// Получаем id пользователя из header
final id = AppUtils.getIdFromHeader(header);
// запрашиваем из базы данных автора по его id
//final zachetki = await managedContext.fetchObjectWithID<Zachetki>(id);
// Если такого автора нет то мы создаем данного автора по его id

// Создаем запрос для создания поста передаем id пользователя контент берем из body
final qCreatePost = Query<Zachetki>(managedContext)
..values.Name = zazheki.Name
..values.Description = zazheki.Description
..values.Category = zazheki.Category
..values.CreationDate = zazheki.CreationDate
..values.ChangeDate = zazheki.ChangeDate;

await qCreatePost.insert();
return AppResponse.ok(message: 'Успешное создание поста');
} catch (error) {
return AppResponse.serverError(error, message: 'Ошибка создания поста');
}
}

@Operation.delete()
  Future<Response> deleteNote(
    @Bind.header(HttpHeaders.authorizationHeader) String header,
    @Bind.body() Zachetki zazhetki,
  ) async {
    try {
      final id = zazhetki.id;
      // Получаем данные пользователя по его id
      final fNote = await managedContext.fetchObjectWithID<Zachetki>(id);
      // Запрос для обновления данных пользователя
      final qDeleteUser = Query<Zachetki>(managedContext)
        ..where((element) => element.id)
            .equalTo(id); // Поиск пользователя осущетсвляется по id

      // Вызов функция для обновления данных пользователя
      await qDeleteUser.delete();
      // Получаем обновленного пользователя

      // Удаляем не нужные параметры для красивого вывода данных пользователя

      return AppResponse.ok(
        message: 'Успешное удаление данных',
      );
    } catch (e) {
      return AppResponse.serverError(e, message: 'Ошибка удаление данных');
    }
  }

  @Operation.get()
  Future<Response> getNote(
    @Bind.body() Zachetki zazhetki,
  ) async {
    try {
      // Получаем id пользователя
      // Была создана новая функция ее нужно реализоваться для просмотра функции нажмите на картинку
      final id = zazhetki.id;
      // Получаем данные пользователя по его id
      final user = await managedContext.fetchObjectWithID<Zachetki>(id);
      
      // Удаляем не нужные параметры для красивого вывода данных пользователя
      user!.removePropertiesFromBackingMap(['refreshToken', 'accessToken']);

      return AppResponse.ok(
          message: 'Успешное получение заметки', body: user.backing.contents);
    } catch (e) {
      return AppResponse.serverError(e, message: 'Ошибка получения заметки');
    }
  }
}