// Faça um programa que receba um valor em reais, depois calcule quantos euros,
//dólares e wons dariam para comprar com esse valor.
// 1 Real/BRL (790) = 0,1577063 Euro/EUR (978)
// 1 Real/BRL (790) = 0,1839791 Dólar dos Estados Unidos/USD (220)
// 1 Real/BRL (790) = 260,4845012 Won sul coreano/KRW (930)

import 'dart:io';

void main() {
  print('Conversor de moedas');
  print('-' * 70);

  double txEuro = 0.1577063;
  double txDolar = 0.1839791;
  double txWown = 260.4845012;

  stdout.write('Digite o valor (em reais) que deseja converter: ');
  String? input = stdin.readLineSync();

  double? valor = double.tryParse(
    input ?? '',
  ); //se nao conseguir converter torna nulo

  if (valor != null) {
    double euro = valor * txEuro;
    double dolar = valor * txDolar;
    double wown = valor * txWown;

    print('O valor de $valor reais equivale a:');
    print('-' * 70);
    print('${euro.toStringAsFixed(2)} euros.');
    print('${dolar.toStringAsFixed(2)} dolares.');
    print('${wown.toStringAsFixed(2)} wons.');
  } else {
    print('Informe um valor válido.');
    return;
  }
}
