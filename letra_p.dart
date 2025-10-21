// Faça um programa que leia três valores inteiros e diferentes e
//mostre-os em ordem decrescente.
import 'dart:io';

void main() {
  while (true) {
    stdout.write('Informe o primeiro número: ');
    int? n1 = int.tryParse(stdin.readLineSync() ?? '');
    stdout.write('Informe o segundo número: ');
    int? n2 = int.tryParse(stdin.readLineSync() ?? '');
    stdout.write('Informe o terceiro número: ');
    int? n3 = int.tryParse(stdin.readLineSync() ?? '');

    if (n1 != null && n2 != null && n3 != null) {
      if (n1 == n2 || n1 == n3 || n2 == n3) {
        print('Os numeros precisam ser diferentes pra dar certo!');
      } else {
        int? maior, menor, meio;

        if (n1 > n2 && n1 > n3) {
          maior = n1;
          if (n2 > n3) {
            meio = n2;
            menor = n3;
          } else {
            meio = n3;
            maior = n2;
          }
        } else if (n2 > n1 && n2 > n3) {
          maior = n2;
          if (n3 > n1) {
            meio = n3;
            menor = n1;
          } else {
            meio = n1;
            menor = n3;
          }
        } else {
          maior = n3;
          if (n1 > n2) {
            meio = n1;
            menor = n2;
          } else {
            meio = n2;
            menor = n1;
          }
        }
        print(
          'os numeros ordenados de forma decrescente são: $maior, $meio e $menor',
        );
        break;
      }
    } else {
      print('Informe números válidos.');
      continue;
    }
  }
}
