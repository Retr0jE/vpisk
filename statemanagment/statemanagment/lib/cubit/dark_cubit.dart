import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'dark_state.dart';

class DarkCubit extends Cubit<DarkState> {
  DarkCubit() : super(DarkInitial());


bool koncha =false;

ThemeMode mode = ThemeMode.system;

void darkClick(){
  if(koncha == false){
    mode = ThemeMode.light;
    emit(DarkClick(mode));
    koncha = true;

  } else {
    mode = ThemeMode.dark;
    emit(DarkClick(mode));
    koncha = false;

  }
  
}

}