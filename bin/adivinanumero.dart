import 'package:adivinanumero/adivinanumero.dart' as numeros;

void main(List<String> arguments) {
  int numeroSecreto, numeroIngresado, contador=0;
  var numerosIngresados=[];

  numeroSecreto = numeros.generarnumero();
  //print(numeroSecreto);

  do {
    
    numeroIngresado = numeros.ingresarNumero();
    numerosIngresados.add(numeroIngresado);
    contador++;

    if (numeroSecreto == numeroIngresado) {
      print("Enhorabuena, has adivinado el número secreto en $contador intentos. Los números ingresados han sido:");
      for(int numero in numerosIngresados){
        print(numero);
      }
      break;
    } else {
      if (numeroIngresado < numeroSecreto) {
        print(
            "El numero ingresado es menor que el numero secreto. Inténtelo de nuevo.");
      } else {
        print(
            "El número ingresado es mayor que el número secreto. Inténtelo de nuevo.");
      }
    }
  } while (numeroSecreto != numeroIngresado);
}
