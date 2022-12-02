import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'listik_state.dart';

class ListikCubit extends Cubit<ListikState> {
  ListikCubit() : super(ListikInitial());

  String ragnarok="Nigga";
var text=<Text>[];
  void AddList()
  {
     text.add(Text(ragnarok));
     
      emit(ListUwU(text));
  }
    void RemoveFromList()
  {
    if(text.length>0)
     text.removeLast();
      emit(ListUwU(ragnarok));
  }
}
