// Faça um programa que peça um ano qualquer. O programa deverá calcular e imprimir a idade.
import 'dart:io';

void main() {
  // variáveis globais
  int? idade;
  String? nome;

  print("Calculando a idade ..");
  print('-' * 70);
  while (true) {
    stdout.write("Qual o seu nome? ");
    nome = stdin.readLineSync();
    nome = (nome == null || nome.isEmpty) ? 'Não informado' : nome;

    stdout.write("Informe seu dia de nascimento: ");
    int? dia = int.tryParse(stdin.readLineSync() ?? '');

    stdout.write("Informe o mês do seu nascimento(número): ");
    int? mes = int.tryParse(stdin.readLineSync() ?? '');

    stdout.write("Informe o ano do seu nascimento(4 digitos): ");
    int? ano = int.tryParse(stdin.readLineSync() ?? '');

    //verificando se os valores foram informados

    if (dia != null && mes != null && ano != null) {
      //Pegando a data atual
      DateTime hoje = DateTime.now();

      if (ano < 1900 || ano > DateTime.now().year) {
        print('O ano precisa ser de 4 dígitos');
        stdout.write('Deseja calcular outra data? (s/n):');
        String? resposta = stdin.readLineSync();
        if (resposta == null || resposta.toLowerCase() != 's') {
          print('Saindo...');
          break;
          // continue;
        } else {
          continue;
        }
      }

      //subtraindo o ano do nascimento
      idade = hoje.year - ano;

      // verificando o dia e o mes
      if (mes > hoje.month || (mes == hoje.month && dia > hoje.day)) {
        idade--;
      }
      print('-' * 70);
      print(
        'Olá $nome! Você já tem $idade anos! Parabéns, continue se cuidando.',
      );
      stdout.write('Deseja calcular outra data? (s/n):');
      String? resposta = stdin.readLineSync();
      if (resposta == null || resposta.toLowerCase() != 's') {
        print('Saindo...');
        break;
      }
    } else {
      print("Todos os dados precisam ser informados!");
      stdout.write('Deseja calcular outra data? (s/n):');
      String? resposta = stdin.readLineSync();
      if (resposta == null || resposta.toLowerCase() != 's') {
        print('Saindo...');
        break;
      }
    }
  }
}
