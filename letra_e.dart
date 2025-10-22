// Faça um programa que receba e divida 2 números. A saída da divisão precisará ser formatada com 4 casas decimais.
import 'dart:io';

void main() {
  // variaveis globais
  int? n1, n2;
  double? resultado;

  print('Divisão entre dois números');
  print('-' * 70);
  while (true) {
    stdout.write('Digite o primeiro número:');
    String? entrada1 = stdin.readLineSync();
    n1 = int.tryParse(entrada1 ?? '');
    stdout.write('Digite o segundo número:');
    String? entrada2 = stdin.readLineSync();
    n2 = int.tryParse(entrada2 ?? '');

    if (n1 == null || n2 == null) {
      print('Informe números válidos.');
      return;
    }

    if (n2 == 0) {
      print('O segundo número não pode ser zero');
      return;
    }

    resultado = n1 / n2;
    print(
      'O resultado da divisão de $n1 por $n2 é ${resultado.toStringAsFixed(4)}',
    );

    stdout.write("Deseja continuar? (s/n):");
  }
}
