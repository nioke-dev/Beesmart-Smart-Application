<?php
include "ipserver.php";
$link = @mysql_connect($ipserver, $db_userm, $db_pasw);
mysql_select_db($db_nama, $link) or die('Koneksi-2 SMARTAPLICATION-CBT belum di setting');

date_default_timezone_set("$zo");