// Faça um programa que peça um ano qualquer. O programa deverá calcular e imprimir a idade.
import 'dart:io';
void main(){
  int ? idade;
  String ? nome;

  print("Calculando a idade ..");
  print('-' * 70);

  stdout.write("Qual o seu nome? ");
  nome = stdin.readLineSync();
  nome = (nome == null || nome.isEmpty) ? 'Não informado' : nome;

  stdout.write("Informe seu dia de nascimento: ");
  String? inputDia = stdin.readLineSync();
  int? dia = (inputDia != null && inputDia.isNotEmpty) ? int.tryParse(inputDia) : null;

  stdout.write("Informe o mês do seu nascimento(número): ");
  String? inputMes = stdin.readLineSync();
  int? mes = (inputMes != null && inputMes.isNotEmpty) ? int.tryParse(inputMes) : null;

  stdout.write("Informe o ano do seu nascimento(4 digitos): ");
  String? inputAno = stdin.readLineSync();
  int? ano = (inputAno != null && inputAno.isNotEmpty) ? int.tryParse(inputAno) : null;

  //verificando se os valores foram informados

  if (dia == null || mes == null || ano == null){
    print("Todos os dados precisam ser informados!");
    return;
  }

  //Pegando a data atual
  DateTime hoje = DateTime.now();

  //subtraindo o ano do nascimento
  idade = hoje.year - ano;

  // verificando o dia e o mes
  if(mes > hoje.month || (mes == hoje.month && dia > hoje.day)){
    idade--;
  }
  print('-' * 70);
  print('Olá $nome! Você já tem $idade anos! Parabéns, continue se cuidando.');



}