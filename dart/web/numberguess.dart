import 'dart:html';
import 'dart:math';
import 'package:web_ui/web_ui.dart';

var rnd = new Random();
int thinking_number = rnd.nextInt(100); // initial value for click-counter
String guess = "";
String result = "";

// Learn about the Web UI package by visiting
// http://www.dartlang.org/articles/dart-web-components/

void check(){
  result = "";
  int guess_int = int.parse(guess);
  if (thinking_number == guess_int){
    result = "You Guessed It!!!";
  }else if(thinking_number > guess_int){
    result = "Higher...";
  }else{
    result = "Lower...";    
  }
  
}

void main() {
  //useShadowDom = true; // to enable use of experimental Shadow DOM in the browser  
}
