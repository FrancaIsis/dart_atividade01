// Faça um programa que recebe um número inteiro e mostre o sucessor e antecessor.
import 'dart:io';

void main() {
  print('Antecessor e Sucessor');
  print('-' * 70);

  stdout.write("Informe o número para conhecer seu antecessor e seu sucessor:");
  String? entrada = stdin.readLineSync();
  int? n = int.tryParse(entrada ?? ''); //se nao conseguir converter n = nulo

  if (n != null) {
    int? antecessor = n - 1;
    int? sucessor = n + 1;
    print(
      'O numero informado foi $n, seu antecessor é $antecessor e seu sucessor é $sucessor',
    );
  } else {
    print('Informe um número válido');
    return;
  }
}
