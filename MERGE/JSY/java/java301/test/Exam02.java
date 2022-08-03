import java.util.Scanner;

public class Exam02 {
//	2. 스캐너를 사용해서 숫자를 입력받고 입력받은 숫자 만큼의 크기의 배열을 생성 후 출력하기.
//	10입력 시 10개의 크기를 배열을 생성함.
//	배열에 1~10까지의 수를 모두 담고 출력( while문을 이용하여 해결 )
//	===============================콘솔===============================
//	10
//	배열[0] 값: 1
//	배열[1] 값: 2
//	.
//	.
//	배열[10] 값: 10
//	==================================================================
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int length = Integer.parseInt(sc.nextLine());
		String[] strs = new String[length];
		int i=0;
		while(i!=length) {
			strs[i] = i+1+"";
			System.out.println("배열[" +i+"] 값 : "+strs[i].toString());
			i++;
		}
		sc.close();
	}
}
