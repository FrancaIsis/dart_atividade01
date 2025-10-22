// Faça um programa que peça 2 valores. Calcule e imprima  a soma, o produto, a subtração,
//a divisão, o resto da divisão e a divisão inteira.
import 'dart:io';

void main() {
  print("Operações aritméticas:");
  print('-' * 70);
  while (true) {
    stdout.write("Informe o primeiro valor: ");
    int? n1 = int.tryParse(stdin.readLineSync() ?? '');
    // int n1 = int.parse(
    //   stdin.readLineSync()!,
    // ); //Converte a String para int. O '!' garante que a entrada de texto não é nula.
    stdout.write("Informe o segundo valor: ");
    int? n2 = int.tryParse(stdin.readLineSync() ?? '');
    // int n2 = int.parse(stdin.readLineSync()!);

    if (n1 != null && n2 != null) {
      // Realizando as operações
      int soma = n1 + n2;
      int produto = n1 * n2;
      int subtracao = n1 - n2;
      // Mostrando os resultados
      print('-' * 70);
      print("A soma de $n1 + $n2 é $soma");
      print("O produto de $n1 * $n2 é $produto");
      print("A subtração de $n1 - $n2 é $subtracao");

      if (n2 != 0) {
        double divisao = n1 / n2;
        int restoDiv = n1 % n2;
        int divInteira = n1 ~/ n2;
        print("A divisão entre $n1 / $n2 é ${divisao.toStringAsFixed(2)}");
        print("O resto da divisão entre $n1 % $n2 é $restoDiv");
        print("A divisão inteira de $n1 por $n2 é $divInteira");
      } else {
        print(
          "Não foi possível realizar a divisão, pois o segundo número não pode ser 0.",
        );
      }
      print('-' * 70);
      //verificando se o usuario deseja continuar
      stdout.write('Deseja realizar outra operação (s/n?');
      String? resposta = stdin.readLineSync();

      //validando resposta do usuario: se for nula ou qq outra coisa diferente de s, sai do programa
      if (resposta == null || resposta.toLowerCase() != 's') {
        print('Saindo...');
        break;
      }
    } else {
      print("Informe números válidos.");
      stdout.write('Deseja tentar de novo? (s/n)?');
      String? resposta = stdin.readLineSync();

      //validando resposta do usuario: se for nula ou qq outra coisa diferente de s, sai do programa
      if (resposta == null || resposta.toLowerCase() != 's') {
        print('Saindo...');
        break;
      }
    }
  }
}
