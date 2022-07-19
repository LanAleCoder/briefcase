import java.io.*;
import java.util.Scanner;
	public class algoritmo4{
		public static void main(String[] args) {
			Scanner dato = new Scanner(System.in);
			System.out.println("===Bienvenido al conversor de km/h a m/s===");
			System.out.println("Ingrese su velocidad en km/h:"); //hacemos que el usuario ingrese sus datos y operamos con ellos
			double dato1 = dato.nextInt();
			double kilometros_en_metros = 1000; //definimos el valor de KM a metros 
			double hora_en_segundos = 3600; //definimos el valor de horas en segundos
			double resultado = (dato1*kilometros_en_metros)/hora_en_segundos; //hacemos el calculo multiplicando el numero que ingrese el usuario multiplicando con metros y dividiendo en segundos
			System.out.println ("Su velocidad en m/s es:" +resultado); 
		}
	}
