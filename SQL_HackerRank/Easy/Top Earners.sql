SELECT MAX(EARNINGS), COUNT(*)
FROM
    (
        SELECT MONTHS*SALARY AS EARNINGS
        FROM EMPLOYEE
    ) E
GROUP BY EARNINGS
ORDER BY EARNINGS DESC LIMIT 1;