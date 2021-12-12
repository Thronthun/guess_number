import 'dart:io';
import 'dart:math';
//ignore_for_file: avoid_print
void main (){
  var r = Random();
  var answer = r.nextInt(10);
  var num = 0;
  for(;;) {
    stdout.write("Guess the number between 1 and 100: ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess != null) {
      num++;
      if (guess == answer) {
        stdout.write(guess);
        stdout.write(" ♥AWESOME♥ , total guesses: ");
        stdout.write(num);
        break;
      }
      if (guess > answer) {
        stdout.write(guess);
        print(" IS TOO HIGH!▲");
      }
      if (guess < answer) {
        stdout.write(guess);
        print(" IS TOO LOW!▼");
      }
    }
  }
}