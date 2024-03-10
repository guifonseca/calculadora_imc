import 'dart:math';
import 'dart:io';

import 'package:calculadora_imc/Pessoa.dart';
import 'package:calculadora_imc/enums.dart';

class Utils {
  static double calcularIMC(Pessoa pessoa) {
    return double.tryParse((pessoa.getPeso() / pow(pessoa.getAltura(), 2))
            .toStringAsFixed(2)) ??
        0.0;
  }

  static ClassificacaoIMCEnum verificarClassificao(double imc) {
    if (imc < 16) {
      return ClassificacaoIMCEnum.magrezaGrave;
    }

    if (imc >= 16 && imc < 17) {
      return ClassificacaoIMCEnum.magrezaModerada;
    }

    if (imc >= 17 && imc < 18.5) {
      return ClassificacaoIMCEnum.magrezaLeve;
    }

    if (imc >= 18.5 && imc < 25) {
      return ClassificacaoIMCEnum.saudavel;
    }

    if (imc >= 25 && imc < 30) {
      return ClassificacaoIMCEnum.sobrepeso;
    }

    if (imc >= 30 && imc < 35) {
      return ClassificacaoIMCEnum.obesidadeGrau1;
    }

    if (imc >= 35 && imc < 40) {
      return ClassificacaoIMCEnum.obesidadeGrau2;
    }

    return ClassificacaoIMCEnum.obesidadeGrau3;
  }

  static String lerNomeConsole() {
    print("Informe o nome da pessoa: ");
    String input = stdin.readLineSync() ?? "";
    if (input.isEmpty) {
      throw ArgumentError("Nome inválido");
    }
    return input;
  }

  static double lerPesoConsole() {
    double? peso = _lerDoubleConsole("Informe o peso em quilos:");
    if (peso <= 0.0) {
      throw ArgumentError("Peso inválido");
    }
    return peso;
  }

  static double lerAlturaConsole() {
    double? altura = _lerDoubleConsole("Informe a altura em metros:");
    if (altura <= 0.0) {
      throw ArgumentError("Altura inválida");
    }
    return altura;
  }

  static double _lerDoubleConsole(String mensagem) {
    print(mensagem);
    String? input = stdin.readLineSync();
    return double.tryParse(input ?? "0.0") ?? 0.0;
  }
}
