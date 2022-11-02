import 'dart:io';

import 'package:exchange_rates/exchange_rates.dart' as exchange_rates;

void main() {
  text();
  exch();
}

dynamic text() {
  print('Курс на сегодня');
  print('Доллар США:83.0 ');
  print('Евро: 82.2');
  print("Рубль: 1.3250");
  print("Тенге: 0.1150");
}

exch() {
  print("1) Xaтите обменять другую валюту на сом");
  print("2) Xaтите обменять сом на другую валюту");
  print("Ввод:");
  int? c = int.parse(stdin.readLineSync()!);
  if (c == 1) {
    selectCurrencyOne();
  } else if (c == 2) {
    selectCurrencyTwo();
  }
}

selectCurrencyOne() {
  print('EUR');
  print('USD');
  print('RUB');
  print('KZT');
  print("Выберите валюту: ");
  var arr = stdin.readLineSync();
  if (arr == 'EUR') {
    EUR();
  } else if (arr == 'USD') {
    USD();
  } else if (arr == 'RUB') {
    RUB();
  } else if (arr == 'KZT') {
    KZT();
  } else {
    print('error');
  }
}

selectCurrencyTwo() {
  print("Сколько сомов вы хотите обменять?");
  print('Ввод:');
  int? som = int.parse(stdin.readLineSync()!);
  print('На какую волюту хотите обменять?');
  print('EUR');
  print('USD');
  print('RUB');
  print('KZT');
  print("Выберите валюту: ");
  var arr = stdin.readLineSync();
  if (arr == 'EUR') {
    double one = 82.2;
    var a = som / one;
    print('обмен:$som сом = $a EUR');
  } else if (arr == 'USD') {
    double one = 83;
    var a = som / one;
    print('обмен:$som сом = $a USD');
  } else if (arr == 'RUB') {
    double one = 1.3250;
    var a = som / one;
    print('обмен:$som сом = $a RUB');
  } else if (arr == 'KZT') {
    double one = 0.1150;
    var a = som / one;
    print('обмен:$som сом = $a KZT');
  } else {
    print('error');
  }
}

//-- обмен другие волюты на сом --//
EUR() {
  print("Сколько EUR вы хотите купить?");
  print('Ввод:');
  double one = 82.2;
  int? sum = int.parse(stdin.readLineSync()!);
  var arr = sum * one;
  print('обмен: $arr сом на $sum EUR');
}

USD() {
  print("Сколько USD вы хотите купить?");
  print('Ввод:');
  double one = 83.0;
  int? sum = int.parse(stdin.readLineSync()!);
  var arr = sum * one;
  print('обмен: $arr сом на $sum USD');
}

RUB() {
  print("Сколько RUB вы хотите купить?");
  print('Ввод:');
  double one = 1.3250;
  int? sum = int.parse(stdin.readLineSync()!);
  var arr = sum * one;
  print('обмен: $arr сом на $sum RUB');
}

KZT() {
  print("Сколько KZT вы хотите купить?");
  print('Ввод:');
  double one = 0.1150;
  int? sum = int.parse(stdin.readLineSync()!);
  var arr = sum * one;
  print('обмен: $arr сом на $sum KZT');
}
