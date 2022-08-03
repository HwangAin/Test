import java.util.Arrays;

public class Exam04 {
//	4. 1차원 배열을 만들고 각각의 index에 다음과 같은 값을 담는다. [10] [5] [20] [30] [1]
//			배열에 있는 모든 값과 최대값과 최소값을 구하여 출력하시오. ( for , if를 통해 해결 )
//			===============================콘솔===============================
//			배열값 : [10 , 5 , 20 , 30 , 1]
//			최대값 : 30
//			최소값 : 1
	public static void main(String[] args) {
		int[] arr = {10, 5, 20, 30, 1};
		
		int max = arr[0], min = arr[0];
		for(int i = 0; i < arr.length; i++) {
			
			for(int j = i+1; j < arr.length; j++) {
				if(arr[i]<arr[j]) {
					max = arr[j];
				}
				if(arr[i]>arr[j]) {
					min = arr[j];
				}
			}
		}
		System.out.println("배열값 : " + Arrays.toString(arr));
		System.out.println("최대값 : " + max);
		System.out.println("최소값 : " + min);
	}
}
