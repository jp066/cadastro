import 'dart:io';

class Funcionarios{
 String? nomeFuncionario;
 int cpf;
 int _idCadastroFuncionarios;
 double _salario;

 Funcionarios(this.nomeFuncionario, this.cpf, this._idCadastroFuncionarios, this._salario);
  
  int get idCadastroFuncionarios => _idCadastroFuncionarios;
  set idCadastroFuncionarios(int value) => _idCadastroFuncionarios = value;

  double get salario => _salario;
  set salario(double value) => _salario = value;


 void detalhesFuncionarios(){
  print('nome: $nomeFuncionario');
  print('Cpf: $cpf');
  print('Id: $_idCadastroFuncionarios');
  print('seu salario é: $_salario');

 }
}

class Clientes{
  String nomeclientes;
  int _idCadastroClientes;
  
  Clientes(this._idCadastroClientes, this.nomeclientes);
  
  int get idCadastroClientes => _idCadastroClientes;
  set idCadastroFuncionarios(int value) => _idCadastroClientes = value;

  void detalhesClientes(){

    print('id: $idCadastroClientes');
    print('Cliente: $nomeclientes');

  }
}
class Produtos {
  int idProduto;
  String setor;

  Produtos(this.idProduto, this.setor);

  void detalhes(){
    print('o id do produto é $idProduto  e seu setor é $setor');
  }
}

void main(){
  //funcionarios
  print('digite seu nome: ');
  String? nomeFuncionario = stdin.readLineSync();
  print('digite seu cpf: ');
  int cpf = int.parse(stdin.readLineSync()!);
  print('seu Id é: ');
  int _idCadastroFuncionarios = int.parse(stdin.readLineSync()!);
  print('seu _salario é: ');
  double _salario = double.parse(stdin.readLineSync()!);

  //clientes
  print('digite seu nome: ');
  String? nomeClientes = stdin.readLineSync();
  print('seu Id é: ');
  int _idCadastroFuncionarios = int.parse(stdin.readLineSync()!);
  print('seu _salario é: ');
  double _salario = double.parse(stdin.readLineSync()!);

  Funcionarios funcionarios = Funcionarios(nomeFuncionario, cpf, _idCadastroFuncionarios, _salario);
  funcionarios.detalhesFuncionarios();
}