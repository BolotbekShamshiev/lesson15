import 'dart:io';
import 'dart:math';

void main() {
  // task1();
  // task2();
  task3();
}

/* Task #1.
Создать функцию, которая запрашивает у пользователя ответ на пример a + b = ?
Нужно создать две переменные a и b, которые генерируются с помощью рандома. 
Также нужна переменная которая записывает результат(сложение переменных a и b). 
Затем вы вводите ответ с клавиатуры.
Компьютер сравнивает ответы. 
Если вы ответили правильно, то вывести на экран «Правильно!».
Если вы ответили неправильно, то заново вызвать функцию.
*/

void task1() {
  int a = Random().nextInt(101);
  int b = Random().nextInt(101);
  int c = a + b;
  int userAnswer = 0;

  print('$a + $b = ?');
  print('Вычислите и введите сумму двух чисел:');

  userAnswer = int.parse(stdin.readLineSync()!);

  if (userAnswer == c) {
    print('Правильно!');
  } else {
    print('Не верно!');
    task1();
  }
}

/* Task #2.
Создать функцию, которая бросает игральную кость(нарды).
Затем вы вводите ответ с клавиатуры: 1- бросить еще раз, 2 - закончить.
Если вы введете 1, то функция вызывается заново,
Если вы введете 2, то вывести на экран «wasted»
*/

void task2() {
  brosanieKosti();

  int userAnswer = 0;

  print('');
  print('введите "1" чтобы бросить еще раз, введите "2" чтобы завершить.');

  userAnswer = int.parse(stdin.readLineSync()!);

  if (userAnswer == 2) {
    print('wasted!');
  } else if (userAnswer != 1 && userAnswer != 2) {
    print('Вам необходимо ввести 1 или 2!');
    shortTask2();
  } else {
    task2();
  }
}

void brosanieKosti() {
  int min = 1;
  int max = 6;
  int brosanieKosti1 = min + Random().nextInt(max - min);
  int brosanieKosti2 = min + Random().nextInt(max - min);

  print('');
  print('Результат');
  print('первая кость: $brosanieKosti1');
  print('вторая кость: $brosanieKosti2');
}

void shortTask2() {
  int userAnswer = 0;

  print('');
  print('введите "1" чтобы бросить еще раз, введите "2" чтобы завершить.');

  userAnswer = int.parse(stdin.readLineSync()!);

  if (userAnswer == 2) {
    print('wasted!');
  } else if (userAnswer != 1 && userAnswer != 2) {
    print('Вам необходимо ввести 1 или 2!');
    shortTask2();
  } else {
    task2();
  }
}

/* Task #3.
Создать функцию, которая возводит введенное вами число 
в введенную вами степенью, 	т.е. Ваша функция принимает два параметра a и b.
*/

void task3() {
  int number = 0;
  int stepen = 0;

  print('Введите число:');

  number = int.parse(stdin.readLineSync()!);

  print('Введите степень:');

  stepen = int.parse(stdin.readLineSync()!);

  var a = pow(number, stepen);

  print('ответ: число $number в степени $stepen равна $a.');
}

/* Task #4.
Дано натуральное число N. Вычислите сумму его цифр.
*/

/* Task #5.
Последовательность чисел Фибоначи определяется формулой Fn = Fn-1 + Fn-2. 
То есть, следующее число получается как сумма двух предыдущих.
Первые два числа равны 1, затем 2(1+1), затем 3(1+2), 5(2+3) 
и так далее: 1, 1, 2, 3, 5, 8, 13, 21....
Напишите функцию fib(n) которая возвращает n-е число Фибоначчи.
Пример работы:
fib(n) { /* ваш код */ }
 
print(fib(3)); // 2
print(fib(7)); // 13
print(fib(77)); // 5527939700884757
*/
