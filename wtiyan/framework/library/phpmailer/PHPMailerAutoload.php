<?php
/**
 * [Weizan System] Copyright (c) 2014 wdlcms.com
 * Weizan is NOT a free software, it under the license terms, visited http://www.wdlcms.com/ for more details.
 */


function PHPMailerAutoload($classname)
{
        $filename = dirname(__FILE__).DIRECTORY_SEPARATOR.'class.'.strtolower($classname).'.php';
    if (is_readable($filename)) {
        require $filename;
    }
}

if (version_compare(PHP_VERSION, '5.1.2', '>=')) {
        if (version_compare(PHP_VERSION, '5.3.0', '>=')) {
        spl_autoload_register('PHPMailerAutoload', true, true);
    } else {
        spl_autoload_register('PHPMailerAutoload');
    }
} else {
    
    function __autoload($classname)
    {
        PHPMailerAutoload($classname);
    }
}
