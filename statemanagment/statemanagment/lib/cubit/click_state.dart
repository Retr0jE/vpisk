part of 'click_cubit.dart';

@immutable
abstract class ClickState {}

class ClickInitial extends ClickState {}

class onClick extends ClickState{

}


class ClickError extends ClickState{

  final String message;
  ClickError(this.message);

}
