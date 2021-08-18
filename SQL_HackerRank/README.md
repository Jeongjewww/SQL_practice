1. REGEXP_LIKE를 이용한 데이터 탐색 쿼리
* '%': 그 자리에 0개 또는 그 이상의 문자 또는 숫자 / '_': 그 자리에 단 하나의 문자 또는 숫자
* 'i' 입력 시, 대소문자 구분 생략

* 예시1) 모음으로 시작하는 city name 출력 => '^[해당문자]'
	=> WHERE REGEXP_LIKE (CITY, '^A|^E|^I|^O|^U');
	=> WHERE REGEXP_LIKE (CITY, '^[AEIOU]', 'i');
* 예시2) 모음으로 끝나는 city name 출력 => '[해당문자]$'
	=> WHERE REGEXP_LIKE (CITY, '[AEIOU]$', 'i');
