<h3>##SQL 문법 정리</h3>
<h4>1. REGEXP_LIKE를 이용한 데이터 탐색 쿼리</h4>
(1) '%': 그 자리에 0개 또는 그 이상의 문자 또는 숫자<br>
(2) '_': 그 자리에 단 하나의 문자 또는 숫자<br>  
(3) 'i' 입력 시, 대소문자 구분 생략<br>
<br>  
예시1) 모음으로 시작하는 city name 출력 => '^[해당문자]'<br>
	=> WHERE REGEXP_LIKE (CITY, '^A|^E|^I|^O|^U');<br>
	=> WHERE REGEXP_LIKE (CITY, '^[AEIOU]', 'i');<br><br>   
예시2) 모음으로 끝나는 city name 출력 => '[해당문자]$'<br>
	=> WHERE REGEXP_LIKE (CITY, '[AEIOU]$', 'i');<br>
<br>
<h4>2. SQL 함수 정리</h4>
1) SUBSTR 함수: 문자열의 일부 데이터를 추출하는 함수<br/>  
	(1) SELECT SUBSTR(NAME, 1, 1);<br>
		=> NAME column을 첫 문자, 즉 성 추출<br>  
	(2) SELECT SUBSTR(NAME, -4);<br>
		=> NAME column의 마지막 네 자리 추출<br>
<br>
2) CONCAT 함수: 문자열을 합치는 함수<br/>
	- 두 문자열을 합칠 때 사용 => CONCAT(NAME, OCCUPATION)<br>
	- 세 개 이상의 문자열을 합칠 경우 => CONCAT(CONCAT(NAME, ' '), OCCUPATION)<br>
	* || 기호를 이용할 시, 여러 문자열을 한 번에 합칠 수 있다.
		=> SELECT NAME||' '||OCCUPATION
<br>
<h4>3. 알아둬야 할 문법 개념</h4>  
- Oracle에서 조건문은 CASE WHEN (조건) THEN 결과 --- END;로 작성<br>
- WHEN절에서의 순서는 중요하다. 첫 번째 WHEN절을 만족하면 그 다음 WHEN절은 의미없다.<br>