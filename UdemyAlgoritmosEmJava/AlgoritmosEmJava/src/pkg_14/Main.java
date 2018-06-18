package pkg_14;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int x, y;
		double z;

		x = 5;

		y = x * 2;

		z = x * 2;

		System.out.println(x);
		System.out.println(y);
		System.out.println(z);
		
		//Trapezio
		
		double b,B, h, area;
		
		b = 6.0;
		B = 8.0;
		h = 5.0;
		
		area = (b + B) / 2.0 * h;
		
		System.out.println("A Area do Trapezio e: " + area);
		
		//Divisao
		
		int val1, val2;
		double resultado;
		
		val1 = 5;
		val2 = 2;
		
		resultado = (double) val1 / val2; //Casting = Conversão Explicita des Valores
		
		System.out.println(resultado);
		
		//Casting
		
		double val3;
		int val4;
		
		val3 = 5.0;
		val4 = (int) val3; //Casting
		
		System.out.println(val4);

	}

}
