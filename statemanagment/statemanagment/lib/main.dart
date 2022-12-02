import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagment/cubit/dark_cubit.dart';

import 'cubit/click_cubit.dart';
import 'cubit/listik_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  AppRouter router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ClickCubit()),
        BlocProvider(create: (context) => DarkCubit()),
        BlocProvider(create: (context) => ListikCubit()),
      ],
      child: BlocBuilder<DarkCubit, DarkState>(
        builder: ((context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            onGenerateRoute: router.generateRouter,
            darkTheme: ThemeData.dark(),
            //initialRoute: mainpage,
            themeMode: context.read<DarkCubit>().mode,
            theme: ThemeData.light(),
            initialRoute: mainpage,
          );
        }),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
  List<Text> myWidgetList = <Text>[];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<ClickCubit, ClickState>(
              builder: (context, state) {
                if (state is onClick) {
                  return Text(
                    context.read<ClickCubit>().count.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                }

                if (state is ClickError) {
                  return Text(
                    state.message,
                    style: Theme.of(context).textTheme.headline4,
                  );
                }

                return Text(
                  'Жми, опездал',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    final ThemeData mode = Theme.of(context);
                    var brightness = mode.brightness;
                    bool isDarkMode = brightness == Brightness.dark;
                    context.read<ClickCubit>().Click(isDarkMode);
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    final ThemeData mode = Theme.of(context);
                    var brightness = mode.brightness;
                    bool isDarkMode = brightness == Brightness.dark;
                    context.read<ClickCubit>().ClickMinus(isDarkMode);
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () {
                    context.read<DarkCubit>().darkClick();
                  },
                  tooltip: 'Theme',
                  child: const Icon(Icons.dark_mode),
                ),
                // FloatingActionButton(
                //         onPressed: () {
                //           Navigator.pushNamed(context, log);
                //         },
                //         tooltip: 'Переход',
                //         child: const Icon(Icons.switch_left),
                //       ),

                Expanded(
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return BlocBuilder<ClickCubit, ClickState>(
                          builder: (context, state) {
                            if (state is ClickState) {
                              myWidgetList = context.read<ClickCubit>().text;

                              return ListTile(
                                  title: Column(children: myWidgetList));
                            }
                            return Text("Empty");
                          },
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  State<TablePage> createState() => _TablePage();
}

class _TablePage extends State<TablePage> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  final List<String> products =
      List<String>.generate(1, (i) => "Product List: $i");
  List<Text> myWidgetList = <Text>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return BlocBuilder<ListikCubit, ListikState>(
                    builder: (context, state) {
                      if (state is ClickState) {
                        myWidgetList = context.read<ClickCubit>().text;

                        return ListTile(title: Column(children: myWidgetList));
                      }
                      return Text("Empty");
                    },
                  );
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    context.read<ListikCubit>().AddList();
                  },
                  tooltip: 'Добавить элемент',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    context.read<ListikCubit>().RemoveFromList();
                  },
                  tooltip: 'Удалить элемент',
                  child: const Icon(Icons.remove),
                ),
                // FloatingActionButton(
                //     onPressed: () {
                //       Navigator.pushNamed(context, mainpage);
                //     },
                //     tooltip: 'Переход',
                //     child: const Icon(Icons.switch_right),
                //   ),
              ],
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

const String log = 'log';
const String mainpage = 'mainpage';

class AppRouter {
  Route<dynamic>? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case log:
        {
          return MaterialPageRoute(builder: (_) => TablePage());
        }
      case mainpage:
        {
          return MaterialPageRoute(builder: (_) => MyHomePage());
        }
    }
  }
}
