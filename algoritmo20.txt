import java.io.*;
import java.util.Scanner;

	public class algoritmo20{
		public static void main(String[] args) {
			Scanner tablas1 = new Scanner(System.in); //Vamos hacer un programa que nos halle el perimetro y el area con la medida de la altura y base 
			System.out.println("***CALCULADOR DE AREA Y PERIMETRO***");
			System.out.println("Ingrese la altura:");
			int h = tablas1.nextInt();
			System.out.println("Ingrese el largo:");
			int l = tablas1.nextInt();
			//hacemos que el usuario ingrese sus datos para operar con ellos
			System.out.println("Eija que quiere encontrar:");
			System.out.println("1)Area");
			System.out.println("2)Perimetro"); //Le pedimos al usuario que elija una de las dos opciones.
			int opciones = tablas1.nextInt();
			if (opciones == 1) {
				int resultado = h*l;
				System.out.println ("Escogio Area, su resultado es:" +resultado);
				}else if (opciones ==2){
				int resultado2 = 2*h + 2*l;
				System.out.println("Escogio perimetro, su resultado es:" +resultado2);
			}
		}
	}