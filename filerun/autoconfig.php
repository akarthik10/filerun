<?php
$config['db'] = array (
  'server' => getenv('FR_DB_HOST') ?: 'filerun-mariadb',
  'port' => getenv('FR_DB_PORT') ?: false,
  'database' => getenv('FR_DB_NAME') ?: 'filerun',
  'username' => getenv('FR_DB_USER') ?: 'filerun',
  'password' => getenv('FR_DB_PASS') ?: 'filerun-pass',
);
