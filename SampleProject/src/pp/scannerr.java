package pp;

import java.util.Scanner;

public class scannerr {
    public static void main(String args[]) {
    	System.out.println("�̸�, ����, ����, ü��, ���� ���θ� ��ĭ���� �и��Ͽ� �Է��ϼ���.");
    	
        Scanner scanner = new Scanner(System.in);
        String name = scanner.next();
        System.out.println("����� �̸��� " + name +"�Դϴ�.");
        String city = scanner.next();
        System.out.println("����� ��� ���ô� " + city + "�Դϴ�.");
        int age = scanner.nextInt();
        System.out.println("����� ���̴� " + age + "�� �Դϴ�.");
        double weight = scanner.nextDouble();
        System.out.println("����� �����Դ� " + weight + "kg �Դϴ�.");
        boolean single = scanner.nextBoolean();
        {
            if(single==true) {
            	System.out.println("����� ���� �Դϴ�.");
            }
            else {
            	System.out.println("����� ������ �ƴմϴ�.");
            }
            
        }
        
        scanner.close();
    }
}
