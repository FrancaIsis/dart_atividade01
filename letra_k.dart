// Faça um programa com entrada de dados para calcular a área de 4 objetos
import 'dart:io';
import 'dart:math' as math;

void main() {
  while (true) {
    print("\nCalcular a área: ");
    print(
      " \n 1 - triangulo\n 2 - retângulo\n 3 - círculo\n 4 - quadrado\n 0 - sair",
    );
    stdout.write("Informe a opção escolhida: ");
    String? input = stdin.readLineSync();
    int? entrada = int.tryParse(input ?? '');

    // verificando se a entrda é nula

    if (entrada == null) {
      print("Digite um número válido!");
      continue;
    }

    // verificando se o usuario quer sair
    if (entrada == 0) {
      print("Até mais...");
      break;
    }
    switch (entrada) {
      case 1:
        //triangulo (base x altura)/2
        stdout.write("Informe o valor da base do triângulo: ");
        double? base = double.tryParse(stdin.readLineSync() ?? '');
        stdout.write("Informe o valor da altura do triângulo: ");
        double? altura = double.tryParse(stdin.readLineSync() ?? '');
        if (base != null && altura != null) {
          double area = (base * altura) / 2;
          print("A área do triangulo é ${area.toStringAsFixed(2)}");
        } else {
          print("Informe valores válidos!");
          return;
        }
        break;

      case 2:
        // retangulo base x altura
        stdout.write("Informe o valor da base do retângulo: ");
        double? base = double.tryParse(stdin.readLineSync() ?? '');
        stdout.write("Informe o valor da altura do retângulo: ");
        double? altura = double.tryParse(stdin.readLineSync() ?? '');
        if (base != null && altura != null) {
          double area = (base * altura);
          print("A área do retângulo é ${area.toStringAsFixed(2)}");
        } else {
          print("Informe valores válidos!");
          return;
        }
        break;
      case 3:
        // círculo pi x r ao quadrado
        stdout.write("Informe o valor do raio do círculo: ");
        double? raio = double.tryParse(stdin.readLineSync() ?? '');

        if (raio != null) {
          double area = math.pi * (math.pow(raio, 2));
          print("A área do circulo é ${area.toStringAsFixed(2)}");
        } else {
          print("Informe valores válidos!");
          return;
        }

        break;
      case 4:
        // quadrado l x l
        stdout.write("Informe o valor do lado do quadrado: ");
        double? lado = double.tryParse(stdin.readLineSync() ?? '');

        if (lado != null) {
          double area = math.pow(lado, 2).toDouble();
          print("A área do quadrado é ${area.toStringAsFixed(2)}");
        } else {
          print("Informe valores válidos!");
          return;
        }
        break;
      default:
        print("Escolha uma opção válida!");
        break;
    }
  }
}
