<?php
foreach ($argv as $v){
echo $v,"\n";} // записываем аргумент с командной строки
$result = count_chars($v,0);//считаем символы
if ($result[ord("(")] == $result[ord(")")])  //проверяем ASCII
echo "chislo skobok ravnoe";
else 
echo 'ne hvataet skobki';
?>