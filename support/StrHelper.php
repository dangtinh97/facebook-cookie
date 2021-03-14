<?php


class StrHelper
{
    public static function timeNow(){
        return date('H:i:s',strtotime('now'));
    }

    public static function exportString($str,$name=''){
        $str = str_replace('[time]',static::timeNow(),$str);
        return str_replace('[name]',$name,$str);
    }
}