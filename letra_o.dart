//Faça um programa que leia uma variável e some 5 caso seja par
//ou some 8 caso seja ímpar, imprimir o resultado desta operação.
import 'dart:io';

void main() {
  while (true) {
    int? resultado;
    stdout.write('Informe um número:');
    int? num = int.tryParse(stdin.readLineSync() ?? '');

    if (num != null) {
      if (num % 2 == 0) {
        resultado = num + 5;
        print('O número informado é par, portanto o resultado é $resultado');
        break;
      } else {
        resultado = num + 8;
        print('O número informado é ímpar, portanto o resultado é $resultado');
        break;
      }
    } else {
      print('Informe números válidos!');
      continue;
    }
  }
}
