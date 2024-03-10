import 'dart:io';

import 'package:calculadora_imc/Pessoa.dart';
import 'package:calculadora_imc/utils.dart';

void main(List<String> arguments) {
  print('Bem vindo a calculadora de IMC');
  try {
    Pessoa pessoa = Pessoa(Utils.lerNomeConsole());
    pessoa.setPeso(Utils.lerPesoConsole());
    pessoa.setAltura(Utils.lerAlturaConsole());
    double imc = Utils.calcularIMC(pessoa);
    print(
        "O valor IMC de ${pessoa.getNome()} é $imc, classificado como ${Utils.verificarClassificao(imc).classificacao}");
  } on ArgumentError catch (e) {
    print(e.message);
    exit(0);
  }
}
