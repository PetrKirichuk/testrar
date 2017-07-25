<?php
foreach ($argv as $v){
echo $v,"\n";}
$result = count_chars($v,0);
if ($result[ord("(")] == $result[ord(")")])
echo "chislo skobok ravnoe";
else 
echo 'ne hvataet skobki';
?>