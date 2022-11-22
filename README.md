# Практическая работа №3
## Тема: Авторизация и регистрация
### Цель работы: Реализовать регистрацию и авторизацию пользователя. Каждое поле на экране авторизации и регистрации провалидировать минимум 3 критериями максимум 5. После успешной авторизации перейти на экран в зависимости от роли пользователя.
### Ход работы:
Для реализации регистрации с переадресацией в зависимости от роли следует отредактировать модели:
![image](https://user-images.githubusercontent.com/92712732/203247017-91f70c01-0295-48f4-8790-7c8950202272.png)
![image](https://user-images.githubusercontent.com/92712732/203247057-515b03b0-a140-47f1-816c-9c47e51a4c03.png)
Далее в domain создадим папку repositories и создадим в ней репозиторий. В репозитории создадим абстрактный класс и методы для регистрации и авторизации.
![image](https://user-images.githubusercontent.com/92712732/203247106-56bea68e-fbdb-48c5-9c74-1384547b1544.png)
![image](https://user-images.githubusercontent.com/92712732/203247142-dcd2df1f-49de-4aac-9cef-38b2a9b3c1c5.png)
![image](https://user-images.githubusercontent.com/92712732/203247146-4a65fb2a-c0b8-4fc5-b401-3e49738582ad.png)
Создадим папочку usecases и файл auth. Пропишем там параметры для логина и регистрации
![image](https://user-images.githubusercontent.com/92712732/203247236-27b78e00-e533-420b-aa74-4c237d58177c.png)
Вся вёрстка и методы регистрации/авторизации прописаны в файле main.dart.
![image](https://user-images.githubusercontent.com/92712732/203247269-b25500dc-3d20-4a4d-b7ff-a7833638a882.png)
![image](https://user-images.githubusercontent.com/92712732/203247283-8045c5e4-4f11-4b52-885d-52fbffd3bc83.png)
![image](https://user-images.githubusercontent.com/92712732/203247317-8f67bd2e-659c-4604-9f1d-5ca07db3ef9b.png)
![image](https://user-images.githubusercontent.com/92712732/203247345-cbcecfe7-7e94-4a23-89a3-ad9e1ef7198d.png)
![image](https://user-images.githubusercontent.com/92712732/203247354-28e3ec16-599a-4a8b-b398-b126b0af09ab.png)
![image](https://user-images.githubusercontent.com/92712732/203247367-5c84fbe8-9515-4ea7-b412-1c69da3d2aa8.png)
![image](https://user-images.githubusercontent.com/92712732/203247393-ae944736-a6de-486f-b32b-e50e604fc044.png)
![image](https://user-images.githubusercontent.com/92712732/203247420-cf081114-6da6-4862-a71f-fc8d48c4e00e.png)
![image](https://user-images.githubusercontent.com/92712732/203247445-d83d4369-fcaa-401b-93ed-218ad483c775.png)
![image](https://user-images.githubusercontent.com/92712732/203247459-5cd473ed-a5fc-4d55-aa28-f3feb84938c8.png)
![image](https://user-images.githubusercontent.com/92712732/203247489-7d32c77c-ba30-4e69-ac65-5140891f6888.png)
![image](https://user-images.githubusercontent.com/92712732/203247507-5570a4b2-d4a6-4ce9-80d3-f1e647b5adb2.png)

###Вывод: В процессе практической работы были получены навыки по реализации регистрации, авторизации и переадресации. Провалидированы поля. Реализован переход по окнам в зависимости от ролей.
