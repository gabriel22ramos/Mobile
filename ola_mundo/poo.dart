class Pessoa {
  //Atributos
  String nome;
  int idade;
//Constructor
  Pessoa(this.nome, this.idade);

//Método da classe Pessoa
void apresentar() {
  print('Olá, meu nome é $nome e tenho $idade anos.');
}
}

class Aluno extends Pessoa {
  String matricula;

  Aluno(String nome, int idade, this.matricula) : super(nome, idade);

  void estudar() {
    print('$nome está estudando.');
  }

  @override
  void apresentar() {
    print('Olá eu sou o aluno $nome com matrícula $matricula');
  }
}

class Professor extends Pessoa{
  String disciplina;

  Professor(String nome, int idade, this.disciplina) : super(nome, idade);

 void ensinar(){
  print('$nome está ensinando $disciplina');
 }
 
 @override
 void apresentar() {
  print('Olá, eu sou o professor $nome e ensino $disciplina');
 }
}

class Escola {
  String nome;
  List<Pessoa> membros = [];

  Escola(this.nome);

  void adicionarMembro( Pessoa pessoa) {
  membros.add(pessoa);
  }
 void exibirMembros() {
  print('Membros da escola $nome');
  for (var membro in membros) {
    membro.apresentar();
  }
 }

}

void main() {
  //Criando as instâncias dos alunos
  Aluno aluno1 = Aluno("Carlos", 16, "A123"); 
  Aluno aluno2 = Aluno("Maria", 15, "A456"); 

//Criando as instâncias do Professor
Professor professor1 = Professor("Ana", 40,"Matemática");

//Criando uma escola e adicionando membros 
Escola escola = Escola("Ursinho Feliz");
escola.adicionarMembro(aluno1);
escola.adicionarMembro(aluno2);
escola.adicionarMembro(professor1);

//Exibindo os membros da escola
escola.exibirMembros();

//Métodos específicos
aluno1.estudar();
professor1.ensinar();

}