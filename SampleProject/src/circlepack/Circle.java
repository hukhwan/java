package circlepack;

public class Circle {
    int radius;
    String name;
    
    public double getArea() {
    	return 3.14*radius*radius;
    }
    
    public static void main(String[] args) {
    	Circle pizza = new Circle();
    	pizza.radius = 10;
    	pizza.name = "�ڹ�����";
    	double area = pizza.getArea();
    	System.out.println(pizza.name + "�� ������ " + area);
    	
    	Circle donut = new Circle();
    	donut.radius = 2;
    	donut.name = "�ڹٵ���";
    	double doarea = donut.getArea();
        System.out.println(donut.name + "�� ������ " + doarea);
    }
}
