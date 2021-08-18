SELECT DISTINCT CITY FROM STATION
WHERE REGEXP_LIKE (CITY, '^[AEIOU]', 'i') AND REGEXP_LIKE (CITY, '[AEIOU]$', 'i');