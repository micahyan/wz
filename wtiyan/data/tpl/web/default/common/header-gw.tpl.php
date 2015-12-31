<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/header-base', TEMPLATE_INCLUDEPATH)) : (include template('common/header-base', TEMPLATE_INCLUDEPATH));?>
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
        <div class="contact-info" style="float: right;width: 36%;">
            <p><small>感谢您使用营销平台</small></p>
        </div>
    </div>
</div>



<?php  } else { ?>
<div class="page-container page-navigation-top-fixed">
    <div class="page-sidebar page-sidebar-fixed" >
        <ul class="x-navigation" >
            <li class="xn-logo">
                <a href="javascript:;"></a>            
            </li>
            <li class="xn-profile">

                <div class="profile">
                    <div class="profile-image">
                        <img src="<?php  echo $_W['attachurl'];?>headimg_<?php  echo $_W['uniacid'];?>.jpg?$acid=<?php  echo $_W['uniacid'];?>" class="" onerror="this.src='resource/wdlcms/assets/images/users/568.jpg'" />
                    </div>

                    <div class="profile-data">
                        <div class="profile-data-name" ><?php  echo $_W['user']['username'];?></div>
                        <div class="profile-data-title">欢迎您回来!</div>
                    </div>
                </div>
            </li>
            <li class="xn-title">快速入口</li>
            
            <li>
                <a href="<?php  echo url('account/display');?>"><span class="fa fa-comments"></span> <span class="xn-text">公众号管理</span></a>
            </li>
            <?php  if($_W['isfounder']) { ?>
            <li>
                <a href="<?php  echo url('profile/module');?>"><span class="fa fa-cogs"></span> <span class="xn-text">扩展功能管理</span></a>
            </li>
			
            <li>
                <a href="<?php  echo url('utility/emulator');?>"><span class="fa fa-edit"></span> <span class="xn-text">模拟测试</span></a>
            </li>
            <li>
                <a href="<?php  echo url('system/welcome');?>"><span class="fa fa-cog"></span> <span class="xn-text">系统设置</span></a>
            </li>


            <?php  } ?>
            <li>
                <a href="<?php  echo url('user/logout');?>"><span class="fa fa-sign-out"></span> <span class="xn-text">直接退出</span></a>
            </li>

        </ul>

    </div>
 
    <div class="page-content" style="margin-left: 223px;">
        <?php  if(!empty($_W['uniacid']) && !defined('IN_MESSAGE')) { ?>
        <ul class="x-navigation x-navigation-horizontal" style="padding-right: 220px;z-index: 8;position: fixed;">

            <li class="xn-openable">
            <a href="<?php  echo url('home/welcome/platform');?>"><i class="fontello-icon-cog-alt"></i> 继续管理公众号（<?php  echo $_W['account']['name'];?>）</a>
            </li>
            <li class="xn-openable pull-right">
                <a href="<?php  echo url('user/logout');?>" class="mb-control" data-box="#mb-signout"><i class="fontello-icon-logout-1"></i> 退出</a>
            </li>
            <li class="pull-right xn-openable">
                <a href="javascript:;" >
                    <i class="fontello-icon-user-1"></i> <?php  echo $_W['user']['username'];?></a>
            </li>
            <li class="xn-openable pull-right" >
                <a href="javascript:;" ><i class="fontello-icon-vcard"></i> <?php  echo $_W['account']['name'];?></a>
            </li>

        </ul><?php  } ?>

        <div class="page-content-wrap"><?php  } ?>
<script>
    var h = document.documentElement.clientHeight;
    $(".page-container").css('min-height',h);
</script>




