import java.io.*;
import java.util.Scanner;
	public class algoritmo5{
		public static void main(String[] args) {
			Scanner datos = new Scanner(System.in); //vamos a crear una calculadora basica
			System.out.println("###Bienvenido a la calculadora basica###");
			System.out.println("Ingrese su primer valor:");
			int primer_valor = datos.nextInt();
			System.out.println("Ingrese su segundo numero:");
			int segundo_valor = datos.nextInt(); //hacemos que el usuario ingrese sus datos para operar con ellos
			System.out.println("¿Que desea hacer con los siguientes numeros?");
			System.out.println("1)Sumar");
			System.out.println("2)Restar");
			System.out.println("3)Multiplicar");
			System.out.println("4)Dividir"); //hacemos que el usuario eliga que hacer con sus datos ingresados
			int datos1 = datos.nextInt();
			if (datos1 == 1) {
				int resultado = primer_valor + segundo_valor;
				System.out.println("Eligio suma, su resultado es:" +resultado);
				}
				else if (datos1 == 2) {
					int resultado_resta = primer_valor - segundo_valor;
					System.out.println("Eligio restar, su respuesta es:" +resultado_resta);
				}
				else if (datos1 == 3) {
					int resultado_multi = primer_valor * segundo_valor;
					System.out.println("Eligio multiplicacion, su respuesta es:" +resultado_multi);
				}
				else if (datos1 == 4) {
					double resultado_div = primer_valor / segundo_valor;
					System.out.println("Eligio division, su respuesta es:" +resultado_div);
				}
		}
	}