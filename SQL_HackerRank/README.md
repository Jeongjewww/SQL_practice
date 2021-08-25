<h2>SQL_HackerRank Practice</h2>
<h3>1. REGEXP_LIKE를 이용한 데이터 탐색 쿼리</h3>
<p><ol>
'%': 그 자리에 0개 또는 그 이상의 문자 또는 숫자<br>
'_': 그 자리에 단 하나의 문자 또는 숫자<br>  
'i' 입력 시, 대소문자 구분 생략
</ol>
예시1) 모음으로 시작하는 city name 출력 => '^[해당문자]'<br>
	=> WHERE REGEXP_LIKE (CITY, '^A|^E|^I|^O|^U');<br>
	=> WHERE REGEXP_LIKE (CITY, '^[AEIOU]', 'i');<br><br>   
예시2) 모음으로 끝나는 city name 출력 => '[해당문자]$'<br>
	=> WHERE REGEXP_LIKE (CITY, '[AEIOU]$', 'i');<br>
</p>
<h3>2. SQL 함수 정리</h3>
<p><strong>1) SUBSTR 함수: 문자열의 일부 데이터를 추출하는 함수</strong><br/>  
<ol>SELECT SUBSTR(NAME, 1, 1);<br>
<ol>=> NAME column을 첫 문자, 즉 성 추출</ol><br>
SELECT SUBSTR(NAME, -4);<br>
<ol>=> NAME column의 마지막 네 자리 추출</ol></ol><br>

<strong>2) CONCAT 함수: 문자열을 합치는 함수</strong><br/>
<ol>두 문자열을 합칠 때 사용 => CONCAT(NAME, OCCUPATION)<br>
세 개 이상의 문자열을 합칠 경우 => CONCAT(CONCAT(NAME, ' '), OCCUPATION)<br>
* || 기호를 이용할 시, 여러 문자열을 한 번에 합칠 수 있다.
=> SELECT NAME||' '||OCCUPATION</ol><br>

<strong>3) UPPER, LOWER, INTICAP 함수</strong><br/>
<ol>- UPPER 함수: 모든 문자를 대문자로 변환<br>
- LOWER 함수: 모든 문자를 소문자로 변환<br>
- INTICAP 함수: 첫 문자는 대문자, 나머지는 소문자로 변환</ol><br>

<strong>4) CEIL, ROUND, TRUNC 함수</strong>
<ol>- CEIL: 소수점 올림<br>
- ROUND: 소수점 반올림<br>
- TRUNC: 소수점 버림<br></ol>
</p>
<h3>3. 알아둬야 할 문법 개념</h3>  
- Oracle에서 조건문은 CASE WHEN (조건) THEN 결과 --- END;로 작성<br>
- WHEN절에서의 순서는 중요 (첫 번째 WHEN절을 만족하면 그 다음 WHEN절은 의미X)<br>