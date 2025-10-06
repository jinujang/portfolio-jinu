import java.util.Scanner;
public class CoffeePrice {
public static void main(String[] args) {
	Scanner scanner = new Scanner(System.in);
			
			System.out.print("무슨 커피 드릴까요?");
String order = scanner.next();
System.out.print("몇잔 드릴까요?");
int quantity = scanner.nextInt();

double price=0;
switch (order) {
case "에스프레소":
if(quantity >= 10) price = quantity*3500*(1-0.05);

break;
	
case "카푸치노":
case "카페라떼":
	price = 3500; break;
case "아메리카노":
	price = 2000; break;
	default: System.out.println("메뉴에 없습니다!");
}
if(price !=0) System.out.print(order + "는" + price + "원입니다");
scanner.close();
}
}
