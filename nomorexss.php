<?php
//Reference: http://gnuclear.blogspot.com.br/2011/06/php-protegendo-formularios-de-ataque.html
function tratarStrings($string){
	return addslashes(htmlentities(utf8_decode($string)));
}
$query = tratarStrings($_GET['q']);
echo $query;
?>
