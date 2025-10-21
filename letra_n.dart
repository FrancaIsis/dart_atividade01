// Faça um programa para encontrar o dobro de um número caso ele seja positivo e
// o seu triplo caso seja negativo, imprimindo o resultado.
import 'dart:io';

void main() {
  print(' Dobro ou Triplo');
  print('-' * 70);
  while (true) {
    stdout.write("Digite um número: ");
    int? num1 = int.tryParse(stdin.readLineSync() ?? '');

    if (num1 != null) {
      if (num1 > 0) {
        int resultado = num1 * 2;
        print("O dobro de $num1 é $resultado!");
        break;
      } else if (num1 < 0) {
        int resultado = num1 * 3;
        print("O triplo de $num1 é $resultado!");
        break;
      } else {
        print('O número informado é zero.');
        break;
      }
    } else {
      print("Informe números válidos!");
      continue;
    }
  }
}
