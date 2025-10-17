// Faça um programa que receba um número inteiro. O programa deverá imprimir
//tabuada de multiplicação deste número.

import 'dart:io';

void main() {
  print('Tabuada');
  print('-' * 70);
  stdout.write('Digite um número e conheça a sua tabuada:');
  String? input = stdin.readLineSync();
  int? num = int.tryParse(
    input ?? '',
  ); //se nao ocnseguir converter recebe o valor nulo
  if (num != null) {
    for (int i = 1; i <= 10; i++) {
      int resultado = num * i;
      print('$num x $i = $resultado');
    }
    print('-' * 70);
  } else {
    print('Informe um valor válido.');
    return;
  }
}
