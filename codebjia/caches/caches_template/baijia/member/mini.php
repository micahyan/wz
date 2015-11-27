<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><body style="background-color:transparent">
<?php if($_username) { ?><?php echo L('hellow');?> <?php echo get_nickname();?>, <a href="<?php echo APP_PATH;?>index.php?m=member&siteid=<?php echo $siteid;?>" target="_blank"><?php echo L('member_center');?></a>&nbsp; | &nbsp; <a href="<?php echo APP_PATH;?>index.php?m=member&c=index&a=logout&forward=<?php echo urlencode($_GET['forward']);?>&siteid=<?php echo $siteid;?>" target="_top"><?php echo L('logout');?></a>&nbsp; | &nbsp;
<?php } else { ?>
    <a target="_top" href="<?php echo APP_PATH;?>index.php?m=member&c=index&a=login&forward=<?php echo urlencode($_GET['forward']);?>&siteid=<?php echo $siteid;?>">登录</a>&nbsp; | &nbsp;<a target="_top" href="<?php echo APP_PATH;?>index.php?m=member&c=index&a=register&siteid=<?php echo $siteid;?>">注册</a>
<?php } ?>
</body>