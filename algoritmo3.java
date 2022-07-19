import java.io.*;
import java.util.Scanner;
	public class algoritmo3{
		public static void main(String[] args) {
			Scanner dato1 = new Scanner(System.in);
			System.out.println("===Bienvenido al conversor de metros a pies===");
			System.out.println("Ingrese su cantidad en metros"); //hacemos que el usuario ingrese sus datos y operamos con ellos
			int dato2 = dato1.nextInt();
			double pies = 3.28; //definimos el valor de metros a pies 
			double resultado = dato2 * pies;
			System.out.println("Su cantidad en metros a pies es:" +resultado);
			
		}
	}