
-- 방법1) 삼각형이 되지 않는 조건을 먼저 명시하여 (3, 3, 8)과 같은 삼각형 오판별 방지
SELECT CASE WHEN A=B AND B=C THEN 'Equilateral'       
        WHEN A+B<=C OR B+C<=A OR A+C<=B THEN 'Not A Triangle'
        WHEN A=B OR B=C OR C=A THEN 'Isosceles' 
        ELSE 'Scalene' END
FROM TRIANGLES;

-- 방법2) 삼각형이 되기 위한 기본 조건으로 첫 번째 CASE WHEN문 작성 후, 기본 조건 내에서 각 삼각형 특징에 대한 CASE WHEN문 작성
SELECT CASE WHEN A+B>C AND B+C>A AND C+A>B THEN
            CASE WHEN A=B AND B=C THEN 'Equilateral'       
                 WHEN A=B OR B=C OR C=A THEN 'Isosceles'
            ELSE 'Scalene' END
        ELSE 'Not A Triangle' END
FROM TRIANGLES;