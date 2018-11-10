<?php
// Config

$config['key'] = '1145141919810lj';  // 请求鉴定 Key

$config['bot_token'] = '797321435:AAF78q64c_f2aBFu2vmRDrdQJF57IdQ09Mo';  // Telegram Bot Token

$config['app_name'] = '陆玖';

$config['db_host'] = 'localhost';
$config['db_port'] = '33006';
$config['db_user'] = 'lj';
$config['db_pass'] = 'LJ@6158';
$config['db_name'] = $config['db_user'];  // 数据库名
$config['db_char'] = 'utf8';

$config['white_list'] = 'ImYrS23,AbusePower,WooMai,ImYrS03,diamond_duke';  // 白名单用户

//设置完成后访问以下路径
//http://api.telegram.org/bot$token/setwebhook?url=https://example.com/wenhook.php?Key=$key
//修改$token为bot token，$key为$config['key']