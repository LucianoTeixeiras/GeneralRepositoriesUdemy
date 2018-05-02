package aula_22;

import java.util.Locale;
import java.util.Scanner;

public class aula_22 {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        sc.useLocale(Locale.ENGLISH);
        Locale.setDefault(new Locale("en", "US"));

        String nome1, nome2;
        int idade1, idade2;
        double media;

        nome1 = sc.next();
        idade1 = sc.nextInt();
        nome2 = sc.next();
        idade2 = sc.nextInt();

        media = (double)(idade1 + idade2) / 2.0;

        System.out.printf("A idade media de %s e %s é: %.1f anos%n", nome1, nome2, media);

        sc.close();
    }
}
