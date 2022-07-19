import java.io.*;
import java.util.Scanner;
public class Tablas{
	public static void main(String[] args) {
		Scanner datos = new Scanner(System.in);
		System.out.println("===========================================");
		System.out.println("|||||***     *** ****  ***      **  **    **|||||");
		System.out.println("||||****   **** *     ** **    **  **    **||||");
		System.out.println("|||*** * * *** ***   **  **   **  **    **|||");
		System.out.println("||***     *** *     **   **  **  **    **||");
		System.out.println("|***     *** ****  **    ** **  ********|");
		System.out.println("===========================================");
		System.out.println("1)Mostrar una tabla especifica");
		System.out.println("2)Cantidad de tablas de multiplicar");
		System.out.println("3)Salir");
		int opciones1 = datos.nextInt();
		if (opciones1 == 1) {
			System.out.println("Elija que tabla de multiplicar en especifico quiere ver:");
			int numero_de_la_tabla = datos.nextInt();
			System.out.println("Ingrese el limite de la tabla");
			int limite = datos.nextInt();
			for (int a = 1;a<=limite ; a++) {
				int respuesta = numero_de_la_tabla * a;
				System.out.println(+numero_de_la_tabla+"*"+a+ "=" +respuesta);
			}
		}
		else if (opciones1 == 2) {
			System.out.println ("Ingrese el rango inicial:");
			int x = datos.nextInt();
			System.out.println("Ingrese el rango final:");
			int y = datos.nextInt();
			for (int b = x;b<=y ; b++) {
				System.out.println("TABLA DEL" +b);
				for (int o = 1;o<=9; o++) {
				
				System.out.println(b+"*" +o+ "=" +(b*o));
				}
			}
		}
		else if (opciones1 == 3){
			System.out.println("Hasta la vista BABY xD");
		}
	}
}