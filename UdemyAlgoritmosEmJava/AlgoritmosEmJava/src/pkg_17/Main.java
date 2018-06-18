package pkg_17;

import java.util.Locale;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		sc.useLocale(Locale.ENGLISH);
		Locale.setDefault(new Locale("en", "US"));
		
		double largura, comprimento, precoMetroQuadrado, Area, Preco;
		
		largura = sc.nextDouble();
		comprimento = sc.nextDouble();
		precoMetroQuadrado = sc.nextDouble();
		
		Area = largura * comprimento;
		Preco = Area * precoMetroQuadrado;
		
		System.out.printf("A Area = %.2f%n", Area);
		System.out.printf("O Preco = %.2f%n", Preco);

		sc.close();

	}

}
