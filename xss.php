<?php
// xss.php?q=foo
  echo "Hello " .@$_GET['q']; 
?>
