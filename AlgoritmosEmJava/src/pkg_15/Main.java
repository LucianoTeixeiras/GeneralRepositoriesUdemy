package pkg_15;

import java.util.Locale;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);

		int a, b;
		double x, y;
		String s;
		char ch;
		a = sc.nextInt();
		b = sc.nextInt();
		x = sc.nextDouble();
		sc.useLocale(Locale.ENGLISH);
		y = sc.nextDouble();
		s = sc.next();
		ch = sc.next().charAt(0);
		System.out.println("DADOS DIGITADOS:");
		System.out.println(a);
		System.out.println(b);
		System.out.println(x);
		System.out.println(y);
		System.out.println(s);
		System.out.println(ch);
		
		String s1, s2, s3;
		s1 = sc.nextLine();
		s2 = sc.nextLine();
		s3 = sc.nextLine();
		System.out.println("DADOS DIGITADOS:");
		System.out.println(s1);
		System.out.println(s2);
		System.out.println(s3);
		
		sc.close();
	}

}
