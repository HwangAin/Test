
public class Exam01 {
//	1. 다음과 같은 데이터를 담을 수 있는 배열을 만들고 출력하기 ( for문을 이용하여 해결 )
//	===============================콘솔===============================
//	배열[0] 값 : 이름1
//	배열[1] 값 : 이름2
//	배열[2] 값 : 이름3
//	배열[4] 값 : 이름4
//	==================================================================
	public static void main(String[] args) {
		String[] strs = new String[4];
		for(int i = 0; i < strs.length; i++) {
			strs[i] = "이름"+(i+1);
			System.out.println(strs[i].toString());
		}
		
		
	}
}
