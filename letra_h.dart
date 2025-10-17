// Faça um programa para converter medidas
import 'dart:io';

void main() {
  print('1 - Converter de centímetro para metro.');
  print('2 - Converter de metro para Kilômetro.');
  print('3 - Sair');

  String? input = stdin.readLineSync();

  int? opcao = int.tryParse(input ?? '');
  switch (opcao) {
    case 1:
      stdout.write('Informe a medida em centímetros:');
      String? entrada = stdin.readLineSync();
      int? cm = int.tryParse(entrada ?? '');
      if (cm != null) {
        double? metro = cm / 100;
        print('$cm cm equivale a $metro mts.');
      } else {
        print('Informe um número válido');
      }
      break;
    case 2:
      stdout.write('Informe a medida em metros:');
      String? entrada = stdin.readLineSync();
      int? mt = int.tryParse(entrada ?? '');
      if (mt != null) {
        double? km = mt / 1000;
        print('$mt mt equivale a $km km.');
      } else {
        print('Informe um número válido');
      }
      break;
    case 3:
      print('Saindo...');
      break;
    default:
      print('Informe um valor válido.');
  }
}
