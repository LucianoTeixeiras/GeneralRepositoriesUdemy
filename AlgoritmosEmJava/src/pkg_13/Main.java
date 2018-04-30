package pkg_13;

import java.util.Locale;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		double x = 10.35784;
		int y = 32;
		String nome = "Maria";
		int idade = 31;
		double renda = 4000.0;

		System.out.println("Teste Inicial!!!");

		System.out.println("Teste Inicial 1!!!");

		System.out.println(x);

		System.out.printf("%.2f%n", x);

		Locale.setDefault(new Locale("pt", "BR"));

		System.out.printf("%.2f%n", x);

		System.out.println(y);

		System.out.println("O Valor de x é: " + x);

		System.out.printf("O Valor de x é: %.2f%n", x);

		System.out.printf("%s tem %d anos e recebe R$ %.2f Reais%n", nome, idade, renda);

	}

}
