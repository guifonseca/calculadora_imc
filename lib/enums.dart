enum ClassificacaoIMCEnum {
  magrezaGrave(classificacao: "Magreza grave"),
  magrezaModerada(classificacao: "Magreza moderada"),
  magrezaLeve(classificacao: "Magreza leve"),
  saudavel(classificacao: "Saudável"),
  sobrepeso(classificacao: "Sobrepeso"),
  obesidadeGrau1(classificacao: "Obesidade grau 1"),
  obesidadeGrau2(classificacao: "Obesidade grau 2 (Severa)"),
  obesidadeGrau3(classificacao: "Obesidade grau 2 (Mórbida)");

  const ClassificacaoIMCEnum({required this.classificacao});

  final String classificacao;
}
