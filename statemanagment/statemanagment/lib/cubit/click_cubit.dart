import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'click_state.dart';

class ClickCubit extends Cubit<ClickState> {
  ClickCubit() : super(ClickInitial());

int count = 0;
var text=<Text>[];

void Click(bool darkness){
  if (darkness==true)
  {
    count+=2;
    text.add(Text(count.toString()+" - Тёмная тема"));
  }
  else{
    count++;
    text.add(Text(count.toString()+" - Светлая тема"));
  }
    
  emit(onClick());
  }

   void ClickMinus(bool darkness) {
    
      if(darkness==true)
      {
      count-=2;
      text.add(Text(count.toString()+" - Тёмная тема"));
      }
      else
      {
      count--;
      text.add(Text(count.toString()+" - Светлая тема"));
      } 
      emit(onClick());
    }
  }
  
  