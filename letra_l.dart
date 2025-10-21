//Faça um programa para receber um número qualquer e informar na tela se é par ou ímpar.
import 'dart:io';

void main() {
  print('Par ou ímpar');
  print('-' * 70);

  stdout.write("Digite um número: ");
  int? num = int.tryParse(stdin.readLineSync() ?? '');

  if (num != null) {
    if (num % 2 == 0) {
      print("O número $num é par!");
    } else {
      print("O número $num é ímpar!");
    }
  } else {
    print("Informe um número válido!");
    return;
  }
}
