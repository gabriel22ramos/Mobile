void main() {
  //Listas
  var nomes = ["Ana", "Bia", "Mariana"];
  print(nomes);
  nomes.add("Daniela");
  print(nomes);
  print(nomes.length);
  nomes.remove("Ana");
  print(nomes);

  //Map

  // "Ana" -> 22;
  Map<String,double> notasDosAlunos = {
    "Ana": 7.9, 
    "Bia": 9.1,
    "Mariana": 7.7
  };

  for (var chave in notasDosAlunos.keys) {
    print('Chave = $chave');
  }
  for (var valor in notasDosAlunos.values) {
    print('Valor = $valor');
  }
  for (var registro in notasDosAlunos.entries) {
    print('${registro.key} = ${registro.value}');
  }
}