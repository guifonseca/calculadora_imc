class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome) {
    _nome = nome;
  }

  String getNome() => _nome;

  void setNome(String nome) => _nome = nome;

  double getPeso() => _peso;

  void setPeso(double peso) => _peso = peso;

  double getAltura() => _altura;

  void setAltura(double altura) => _altura = altura;
}
