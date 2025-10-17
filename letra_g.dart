// Faça um programa que receba um número qualquer e calcule o dobro e o triplo desse número.
import 'dart:io';

void main() {
  print("Dobro e triplo");
  print('-' * 70);
  stdout.write("Digite um número:");
  String? entrada = stdin.readLineSync();
  int? n = int.tryParse(entrada ?? ''); //se nao conseguir converter n = nulo

  if (n != null) {
    int? dobro = n * 2;
    int? triplo = n * 3;
    print('-' * 70);
    print('O dobro de $n é $dobro');
    print('O triplo de $n é $triplo');
  } else {
    print('Informe um número válido');
    return;
  }
}
