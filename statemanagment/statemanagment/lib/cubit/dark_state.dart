part of 'dark_cubit.dart';

@immutable
abstract class DarkState {}

class DarkInitial extends DarkState {}

class DarkClick extends DarkState{

  final ThemeMode themeMode;

  DarkClick(this.themeMode);

}


