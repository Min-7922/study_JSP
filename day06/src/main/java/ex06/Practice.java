package ex06;

public class Practice {
	// 알파벳 숫자로 바꾸기
    public static long solution(String numbers) {
        long answer = 0;
        numbers = numbers.replaceAll("one", "1");
        numbers =  numbers.replaceAll("two", "2");
        numbers = numbers.replaceAll("three", "3");
        numbers = numbers.replaceAll("four", "4");
        numbers =  numbers.replaceAll("five", "5");
        numbers =  numbers.replaceAll("six", "6");
        numbers =  numbers.replaceAll("seven", "7");
        numbers =  numbers.replaceAll("eight", "8");
        numbers =  numbers.replaceAll("nine", "9");
        numbers =  numbers.replaceAll("zero", "0");
        System.out.println(numbers);
        
        answer = (long)Integer.parseInt(numbers);
        return answer;
    }
    
    public static void main(String[] args) {
		long test = solution("onetwothreefourfivesixseveneightnine");
		System.out.println(test);
	}

}
