<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * mengubah format tanggal
 * menjadi format dd-mm-yyyy
 */
function dateIndo($value)
{
    return date_format(date_create($value), 'd-m-Y');
}


/**
 * mengubah format tanggal
 * menjadi format yyyy-mm-dd
 */
function dateMysql($value)
{
    return date('Y-m-d', strtotime(str_replace('/', '-', $value)));
}

/**
 * menampilkan nilai variabel
 */
function pre($data)
{
    echo "<pre>";
    print_r($data);
    echo "</pre>";
}
