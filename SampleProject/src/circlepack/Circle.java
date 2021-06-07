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
    	pizza.name = "자바피자";
    	double area = pizza.getArea();
    	System.out.println(pizza.name + "의 면적은 " + area);
    	
    	Circle donut = new Circle();
    	donut.radius = 2;
    	donut.name = "자바도넛";
    	double doarea = donut.getArea();
        System.out.println(donut.name + "의 면적은 " + doarea);
    }
}
