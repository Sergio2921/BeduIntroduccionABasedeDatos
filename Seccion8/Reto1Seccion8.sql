SELECT *,(SQRT((POW((longitude+106.4263443),2)+POW((latitude-23.2272212),2)))) AS distancia FROM `directory` ORDER BY distancia LIMIT 1;
