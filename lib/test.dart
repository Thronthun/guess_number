import 'dart:io';
import 'dart:math';

void main (){
  var r = Random();
  var answer = r.nextInt(10);
  for(;;) {
    stdout.write("Please enter your input: ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess == answer) {
      stdout.write("AWESOME!!!");
      break;
    }
    print("WRONG!!!");
  }
}