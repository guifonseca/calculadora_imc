import 'package:calculadora_imc/Pessoa.dart';
import 'package:calculadora_imc/enums.dart';
import 'package:calculadora_imc/utils.dart';
import 'package:test/test.dart';

void main() {
  group("Calcula o valor do IMC: ", () {
    var valuesToTest = {
      {
        'nome': 'Eduardo',
        'peso': 64.8,
        'Altura': 1.68,
      }: 22.96,
      {
        'nome': 'Jonas',
        'peso': 87.6,
        'Altura': 1.73,
      }: 29.27
    };
    valuesToTest.forEach((values, expected) {
      test('Entrada: $values: Esperado: $expected', () {
        Pessoa pessoa = Pessoa(values["nome"].toString());
        pessoa.setPeso(double.parse(values["peso"].toString()));
        pessoa.setAltura(double.parse(values["Altura"].toString()));
        expect(Utils.calcularIMC(pessoa), expected);
      });
    });
  });

  group("Verifica a classificação do IMC: ", () {
    var valuesToTest = {
      {
        'nome': 'Eduardo',
        'peso': 64.8,
        'Altura': 1.68,
      }: ClassificacaoIMCEnum.saudavel,
      {
        'nome': 'Jonas',
        'peso': 87.6,
        'Altura': 1.73,
      }: ClassificacaoIMCEnum.sobrepeso
    };
    valuesToTest.forEach((values, expected) {
      test('Entrada: $values: Esperado: $expected', () {
        Pessoa pessoa = Pessoa(values["nome"].toString());
        pessoa.setPeso(double.parse(values["peso"].toString()));
        pessoa.setAltura(double.parse(values["Altura"].toString()));
        double imc = Utils.calcularIMC(pessoa);
        expect(Utils.verificarClassificao(imc), expected);
      });
    });
  });
}
