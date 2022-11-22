import 'package:flutter/material.dart';
import 'package:pr2/data/repositories/auth_repositories_impl.dart';

import 'approuter.dart';
import 'core/db/data_base_helper.dart';
import 'domain/entity/role_entity.dart';
import 'domain/usecases/auth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DataBaseHelper.instance.init();
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});
  AppRouter router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: router.generateRouter,
      initialRoute: log,
    );
  }
}
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}
class _Login extends  State<Login> {

  GlobalKey<FormState> _key = GlobalKey();

TextEditingController _loginController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
            key: _key,
        child:Column(children: [
        Text('Логин'),
        
         TextFormField(
          maxLength: 25,
          controller: _loginController,
     validator: (value) {
           if (value!.isEmpty) {
              return 'Логин не должен быть пустым';
            }
            if (value.length < 5) {
              return 'Логин должен быть не менее 5 символов';
            }
              if (value.contains(RegExp(r"[а-яА-Я]"),0)) {
              return 'Только английские символы ';
            }
           
     },
          decoration: const InputDecoration(
            hintText: 'Логин',
            border: OutlineInputBorder(),
          ),
        ),

        //Пароль
        TextFormField(
          maxLength: 30,
          controller: _passwordController,
                validator: (value) {
            if (value!.isEmpty) {
              return 'Введите пароль';
            }
            if (value.length < 5) {
              return 'Пароль должен быть не менее 5 символов';
            }
              if (value.contains(RegExp(r"[а-яА-Я]"),0)) {
              return 'Допустимы только английские символы';
            }
            return null;
          },
          decoration: const InputDecoration(
            hintText: 'Пароль',
            border: OutlineInputBorder(),
          ),
        ),
         SizedBox(
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                    
                        if (_key.currentState!.validate()) {
                        signIn();
                      } else {}  
                    
                    },
                    child: const Text(
                      'Авторизация',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.pushReplacementNamed(context, reg);
                    },
                    child: const Text(
                      'Регистрация',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
      ],))),
      
    );
    
  }
  void signIn() async {
    final AuthRepositoriesImpl auth = AuthRepositoriesImpl();
    var result = await Auth(auth).signIn(AuthParamsLogin(
      login: _loginController.text,
      password: _passwordController.text
    ));
    result.fold((l) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Ошибка авторизации. Даун чекни данные"),
        ),
      );
    }, (r) {
      switch (r) {                                          
        case RoleEnum.admin:
          {
            Navigator.pushReplacementNamed(context, adminpage);
            break;
          }
        case RoleEnum.user:
        Navigator.pushReplacementNamed(context, userpage);
          break;
      }
    });
  }
}


class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _Registration();
}

class _Registration extends State<Registration> {

  GlobalKey<FormState> _key = GlobalKey();

TextEditingController _loginController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _surnameController = TextEditingController();


  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                const Text(
                  'Регистрация',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26),
                ),
                const Spacer(),
             
               TextFormField(
          maxLength: 25,
          controller: _loginController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Логин не должен быть пустым';
            }
            if (value.length < 5) {
              return 'Логин должен быть не менее 5 символов';
            }
              if (value.contains(RegExp(r"[а-яА-Я]"),0)) {
              return 'Только английские символы ';
            }
           
            return null;
          },
          decoration: const InputDecoration(
            hintText: 'Логин',
            border: OutlineInputBorder(),
          ),
        ),

        //Пароль
        TextFormField(
          maxLength: 30,
          controller: _passwordController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Пароль не должен быть пустым';
            }
            if (value.length < 5) {
              return 'Пароль должен быть не менее 5 символов';
            }
               if (value.contains(RegExp(r"[а-яА-Я0]"),0)) {
              return 'Только английские символы ';
            }
            return null;
          },
          decoration: const InputDecoration(
            hintText: 'Пароль',
            border: OutlineInputBorder(),
          ),
        ),
        //ФИО
        TextFormField(
          maxLength: 255,
          controller: _surnameController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Введите ФИО';
            }
            if (value.length < 3) {
              return 'Не верю';
              
            }
              if (value.contains(RegExp(r"[A-Za-z]"),0)) {
              return 'Только русские символы';
            }
               if (value.contains(RegExp(r'[0-9]'),0)) {
              return 'Незя цифры';
            }
            return null;
          },
          decoration: const InputDecoration(
            hintText: 'ФИО',
            border: OutlineInputBorder(),
          ),
        ),
      
                SizedBox(
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        signUp();
                      } else {}
                    },
                    child: const Text(
                      'Зарегистрироваться',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const Spacer(flex: 3),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushReplacementNamed(context,log),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUp() async {
    final AuthRepositoriesImpl auth = AuthRepositoriesImpl();

    var result = await Auth(auth).signUp(AuthParams(
        login: _loginController.text,
        password: _passwordController.text,
        FIO: _surnameController.text
      )
    );

    result.fold((l) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("нубчик"),
        ),
      );
    }, (r) {
      Navigator.pushNamed(context,adminpage);
    });
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Column(mainAxisAlignment: MainAxisAlignment.center ,children: [
        Text('Экран админа'),
    
          
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, log);
            },
            child: Text('Выйти')),
      ]),
    );
  }
}
class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Text('Экран пользователя'),
    
          
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, log);
            },
            child: Text('Выйти')),
      ]),
    );
  }
}