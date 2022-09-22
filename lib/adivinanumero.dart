import "dart:math" as mates;
import "dart:io" as datos;

int generarnumero(){

  print("Se va a generar un número secreto");
  int numeroSecreto = mates.Random().nextInt(100);
  print("Número secreto creado");
  
  return numeroSecreto;

}

int ingresarNumero(){
  int numeroIngresado;
  String numeroIngresadoString;
 
do{

  print("Introduzca un número comprendido entre el 0 y el 100.");
  numeroIngresadoString = datos.stdin.readLineSync().toString();

}while(int.tryParse(numeroIngresadoString) == null || numeroIngresadoString==null); 

numeroIngresado = int.parse(numeroIngresadoString);

return numeroIngresado;

}