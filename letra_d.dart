// Faça um programa que peça 4 notas com entrada de dados. O programa deverá calcular a média das notas digitadas.
import 'dart:io';

void main() {
  //variaveis globais
  String? nome;
  double? n;
  double soma = 0.0;
  double? media;

  print("Calculando a média");
  print('-' * 70);
  while (true) {
    stdout.write("Informe o nome do aluno: ");
    nome = stdin.readLineSync();
    nome = (nome == null || nome.isEmpty) ? "Não informado" : nome;

    for (int i = 0; i < 4; i++) {
      stdout.write("Informe a nota ${i + 1}: ");
      String? inputNota = stdin.readLineSync();
      double? n = double.tryParse(inputNota ?? '');
      if (n != null) {
        soma += n;
      } else {
        print("Digite um numero válido para a nota, ex: 2 ou 2.6");
        i--;
      }
    }
    media = soma! / 4;
    print("-" * 70);
    print("Aluno(a): $nome ");
    print("Média: ${media.toStringAsFixed(2)}");
    print("-" * 70);

    stdout.write("Deseja calcular a média de outro auluno? (s/n)");
    String? resposta = stdin.readLineSync();
    if (resposta == null || resposta.toLowerCase() != 's') {
      print('Saindo...');
      break;
    }
  }
}
