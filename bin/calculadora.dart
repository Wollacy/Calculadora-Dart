import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  
  void somar(){
    var resultado = numeroUm + numeroDois;
    print("O resultado de $numeroUm + $numeroDois é: $resultado");
  }
  void subtrair(){
    var resultado = numeroUm - numeroDois;
    print("O resultado de $numeroUm - $numeroDois é: $resultado");
  }
  void multiplicar(){
    var resultado = numeroUm * numeroDois;
    print("O resultado de $numeroUm x $numeroDois é: $resultado");
  }
  void dividir(){
    var resultado = numeroUm / numeroDois;
    print("O resultado de $numeroUm / $numeroDois é: $resultado");
  }

  void calcular(){
    switch(operacao){
    case "+":
    somar();

    case "-":
    subtrair();

    case "*":
    multiplicar();

    case "/":
    dividir();

    break;
    }
  }

  print("Digite o primeiro valor: ");
  String? entrada = stdin.readLineSync();
  if (entrada != null){
    if (entrada !=""){
      numeroUm = double.parse(entrada);
    }
  }

  print("Digite uma operação('+', '-', '*' ou '/'): ");
  entrada = stdin.readLineSync();
  if (entrada != null){
      operacao = entrada;
    }

  print("Digite o segundo valor: ");
  entrada = stdin.readLineSync();
  if (entrada != null){
    if (entrada !=""){
      numeroDois = double.parse(entrada);
    }
  }

  calcular();

  // if (operacao == "+"){
  //   somar();
  // } else if (operacao == "-"){
  //   subtrair();
  // } else if (operacao == "*") {
  //   multiplicar();
  // } else if(operacao == "/"){
  //   dividir();
  // } else {
  //   print("Operação inválida!");
  // }
}
