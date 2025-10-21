//Faça um algoritmo que leia dois valores inteiros A e B.
//Se os valores forem iguais deverá somar os dois, caso contrário multiplique A por B.
//Ao final de qualquer um dos cálculos deve-se atribuir o resultado para uma variável C
//e mostrar seu conteúdo na tela.
import 'dart:io';

void main() {
  print(' Soma ou multiplica');
  print('-' * 70);

  stdout.write("Digite o primeiro número: ");
  int? num1 = int.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Digite o segundo número: ");
  int? num2 = int.tryParse(stdin.readLineSync() ?? '');

  if (num1 != null && num2 != null) {
    if (num1 == num2) {
      int resultado = num1 + num2;
      print("A soma dos números $num1 e $num2 é $resultado!");
    } else {
      int resultado = num1 * num2;
      print(
        "O resultado da multiplicação entre os números $num1 e $num2 é $resultado!",
      );
    }
  } else {
    print("Informe números válidos!");
    return;
  }
}
