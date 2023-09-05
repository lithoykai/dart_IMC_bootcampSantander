import 'dart:io';

import 'package:imc/models/person.dart';

void imc() {
  stdout.write('Bem vindo à calculadora de IMC.\nQual é o seu nome? ');
  String name = stdin.readLineSync().toString();
  print('Certo $name, então, preciso de mais duas informações:');

  List<double> imcPersonData = [];
  List<String> names = ['peso (kg)', 'altura (m)'];
  getPersonData(names, 0, imcPersonData: imcPersonData);
  // for (int i = 0; i < 2; i++) {
  //   do {
  //     stdout.write('Qual é o seu ${names[i]} ');
  //     double? data = double.tryParse(stdin.readLineSync().toString());

  //     if (data == null) {
  //       print('Você informou um ${names[i]} errado. Tente novamente: ');
  //     } else {
  //       imcPersonData.add(data);
  //       break;
  //     }
  //   } while (true);
  // }
  Person person =
      Person(name: name, weight: imcPersonData[0], height: imcPersonData[1]);
  print('Seu IMC é: ${person.calcIMC().toString()}');
  print('Você está: ${person.imcValue}');
}

void getPersonData(List<String> names, int index, {List<double>? imcPersonData}) {
  if (index < 2) {
    stdout.write('Qual é o seu ${names[index]}: ');
    double? data = double.tryParse(stdin.readLineSync()!);

    if (data == null || data <= 0) {
      print('Você informou um ${names[index]} errado. Tente novamente: ');
      getPersonData(names, index, imcPersonData: imcPersonData); 
    } else {
      imcPersonData?.add(data);
      getPersonData(names, index + 1, imcPersonData: imcPersonData);
    }
  } else {
    
    return;
  }
}