import java.util.Arrays;

public class Exam03 {
//	3. 1차원 배열을 만들고 배열의 누적합을 구하기. ( while or for문을 이용하여 해결 )
//	( 배열의 값 [1] [3] [5] [7] [9] [11] [13] [15] [17] [19] [21] )
//	===============================콘솔===============================
//	배열값 : [1, 3 , 5 , 7 , 9 , 11 , 13, 15 ,17 , 19 , 21]
//	누적합 : 121
//	==================================================================
	public static void main(String[] args) {
		int[] arr = new int[11];
		int sum = 0;
		for(int i = 0 ; i<arr.length; i++) {
			arr[i] = 2*i+1;
			sum += arr[i];
		}
		System.out.println("배열값 : " + Arrays.toString(arr));
		System.out.println("누적합 : " + sum);
	}
}
