import java.util.Scanner;
public class tarea2{
	public static void main(String[] args) {
		Scanner h1 = new Scanner(System.in);
		/*vamos a crear un algoritmo que nos permita ingresar
		tres numeros y los ordene de mayor a menor*/
		System.out.println("Ingrese el primer numero");
		int a = h1.nextInt();
		System.out.println("Ingrese el segundo numero");
		int b = h1.nextInt();
		System.out.println("ingrese el tercer numero 3");
		int c = h1.nextInt(); //lo siguiente es programar los diferentes casos que nos aparezcan
		if (a>=b && b>=c) {
			System.out.println("Los numeros ordenados de mayor a menor son:" +a+ "," +b+ "," +c);
		}
		else if(b>=a && a>=c){
				System.out.println("Los numeros ordenados de mayor a menor son;" +b+ "," +a+ "," +c);
				}
				else if(b>=c && c>=a){
						System.out.println("Los numeros ordenados de mayor a menor son:" +b+ "," +c+ "," +a );
						}
						else if(c>=b && b>=a)
								System.out.println("Los numeros ordenados de mayor a menor son:" +c+ "," +b+ "," +a);
							}
						}
					
					
			
		
		

		
	
