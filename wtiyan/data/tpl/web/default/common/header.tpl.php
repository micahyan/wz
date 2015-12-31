<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/header-base', TEMPLATE_INCLUDEPATH)) : (include template('common/header-base', TEMPLATE_INCLUDEPATH));?>

<script>
$(document).ready(
function() {
$("#sidebarn").niceScroll({cursorcolor:"rgb(201, 16, 50)"});
}
);
</script>
<?php  if(defined('IN_MESSAGE')) { ?>
<div class="col-md-6 colmobile006" style="margin: 0 auto; float: none;padding-top:5%; width: 38%;">
<div class="panel panel-primary">
    <div class="panel-heading ui-draggable-handle">
        <?php  if(is_array($msg)) { ?>
        <h3 class="panel-title">MYSQL 错误：</h3>
    </div>
    <div class="panel-body">
        <h3><?php  echo cutstr($msg['sql'], 300, 1);?></h3>
        <p><b><?php  echo $msg['error']['0'];?> <?php  echo $msg['error']['1'];?>：</b><?php  echo $msg['error']['2'];?></p>
    </div>
    <?php  } else { ?>
    <h3 class="panel-title"><?php  echo $caption;?></h3>

    <div class="panel-body">
        <h3><?php  echo $msg;?></h3>

    <?php  } ?>
    <?php  if($redirect) { ?>
    <h4><a href="<?php  echo $redirect;?>" class="alert-link">如果你的浏览器没有自动跳转，请点击此链接</a></h4>
    <script type="text/javascript">
        setTimeout(function () {
            location.href = "<?php  echo $redirect;?>";
        }, 2000);
    </script>
    <?php  } else { ?>
    <h4>[<a href="javascript:history.go(-1);" class="alert-link">点击这里返回上一页</a>] &nbsp; [<a href="./?refresh" class="alert-link">首页</a>]</h4>
    <?php  } ?></div></div>
    <div class="panel-footer">
        <div class="contact-info" style="float: right;
width: 36%;">
			<p><small>感谢您使用WDLCMS营销平台</small></p>
        </div>
    </div>
</div>



<?php  } else { ?>


<div class="page-container page-navigation-top-fixed">
 <ul class="x-navigation x-navigation-horizontal" style="z-index: 8;position: fixed;" id="tophead">
        <li class="xn-logo" style="background: #0D708F;">
            <a href="javascript:;"></a>      
        </li>  
        <li class="xn-openable pull-left">
            <a href="<?php  echo url('account/display');?>" ><i class="fontello-icon-chat-1"></i> 公众号管理</a>
        </li>
        <li>
            <a href="<?php  echo url('home/welcome/platform');?>"><i class="fontello-icon-wrench-2"></i> 基础设置</a>
        </li>
        <li>
            <a href="<?php  echo url('home/welcome/site');?>"><i class="fontello-icon-globe"></i> 微站功能</a>
        </li>
        <li>
            <a href="<?php  echo url('home/welcome/mc');?>"><i class="fontello-icon-users-1"></i> 粉丝营销</a>
        </li>
        <li>
            <a href="<?php  echo url('home/welcome/setting');?>"><i class="fontello-icon-list-nested"></i> 功能选项</a>
        </li>

        <li>
            <a href="<?php  echo url('home/welcome/ext');?>"><i class="fontello-icon-th-3"></i> 扩展功能</a>
        </li>
        <?php  if($_W['isfounder']) { ?>
            <li>
                <a href="<?php  echo url('system/welcome');?>"><i class="fontello-icon-cog-alt"></i> 系统设置</a>
            </li>
            <?php  } ?>
        <?php  if(FRAME == 'solution') { ?><li>
            <a href="<?php  echo url('home/welcome/solution', array('m' => $m));?>"><i class="fontello-icon-th"></i> 行业功能-<?php  echo $solution['title'];?></a>
        </li><?php  } ?>

        <li class="xn-openable pull-right">
            <a href="<?php  echo url('user/logout');?>"><i class="fontello-icon-logout-1"></i> 退出</a>
        </li>
        <li class="pull-right xn-openable">
            <a href="javascript:;" >
                <i class="fontello-icon-user-1"></i> <?php  echo $_W['user']['username'];?></a>
        </li>
        <li class="xn-openable pull-right" >
            <a href="javascript:;" ><i class="fontello-icon-vcard"></i> <?php  echo $_W['account']['name'];?></a>
        </li>

    </ul>
        <div class="page-sidebar page-sidebar-fixed" id="sidebarn" style="top:50px;">
            <!-- START X-NAVIGATION -->

            <ul class="x-navigation" id="navexp" >


                <li class="xn-profile">
                    <div class="profile">

                        <div class="profile-image">
                            <img src="<?php  echo $_W['attachurl'];?>headimg_<?php  echo $_W['uniacid'];?>.jpg?$acid=<?php  echo $_W['uniacid'];?>" class="" onerror="this.src='resource/wdlcms/assets/images/users/568.jpg'" />
                        </div>
                       
                        <div class="profile-data">
                            <div class="profile-data-name"><?php  echo $_W['user']['username'];?></div>
                            <div class="profile-data-title">欢迎您回来！</div>
                        </div>

                    </div>
                </li>
                <?php $frames = empty($frames) ? $GLOBALS['frames'] : $frames; _calc_current_frames($frames);?>
                <?php  if(!empty($frames)) { ?>
                <?php  if(is_array($frames)) { foreach($frames as $k => $frame) { ?>
                <li class="xn-openable active">

                    <a data-toggle="collapse"  data-parent="#frame-<?php  echo $k;?>" href="#frame-<?php  echo $k;?>"><span class="xn-text"><?php  echo $frame['title'];?></span></a>

                    <ul id="frame-<?php  echo $k;?>" class="panel-collapse collapse in">
                        <li>
                            <?php  if(is_array($frame['items'])) { foreach($frame['items'] as $link) { ?>
                              <a class="list-group-item1<?php  echo $link['active'];?>" href="<?php  echo $link['url'];?>" ><?php  echo $link['title'];?></a>

                            <?php  } } ?></li>
                    </ul>

                </li>
                <?php  } } ?><?php  } ?></ul>


        </div>


        <div class="page-content">
 
            <div class="page-content-wrap" >


                <div id="row" style="margin-top: 20px;">
                    <div class="col-md-12">
                     
                         <div class="panel panel-default">
                            <div class="panel-body"><script>
    var h = document.documentElement.clientHeight;
    $(".page-container").css('min-height',h);
</script>   <?php  } ?>