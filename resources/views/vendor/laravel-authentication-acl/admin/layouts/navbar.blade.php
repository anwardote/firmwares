<?php
//$current_route = \Request::route()->getName();
//$authentication = \App::make('authenticator');
//$user = $authentication->getLoggedUser();
//$user_group = strtolower($user->groups()->first()->name);
//if ($user_group == "admin" || $user_group == "superadmin" || $user_group == "health system admin" || $user_group == "health plan admin" || $user_group == "employer admin") {
//    
//} else {
    ?>
    <style>
                #addtlLinks .user-menu a:nth-child(1){display: none !important;}
    </style>

<?php // } ?>
<style>

    .user-menu{display:none;padding: 0 !important;padding:0 !important;list-style:none;position: absolute;  border: 1px solid #ccc;background:#fff;z-index:999;margin:0;}
    #header #addtlLinks .user-menu a{padding:12px 6px;border-bottom: 1px solid #ccc;display:block; line-height: normal;text-align: center;}
    #header #addtlLinks .user-menu a:last-child{border-bottom:none;}
    #addtlLinks .fa{margin-left:5px;}
    #addtlLinks > a {cursor: pointer;}
    .up {background:url(/images/arrowDown.png) no-repeat right 10px;}
    .down {background:url(/images/arrowup.png) no-repeat right 10px;}

    #header #navWrap .sub-menu li:last-child a {
        border-bottom-right-radius: 25px;
    }     

</style>
<div id="header">
    <div class="container">
        <a href="/" id="logo">
            {{ HTML::image('images/website-logo.png') }}
        </a>
        <div id="hdrRight" class="right">

            <div id="addtlLinks">
                <a class="up">Welcome &nbsp;</a>
                <!--a>Welcome <i class="fa fa-caret-up" aria-hidden="true"></i></a-->
                <div class="user-menu">
                    @if(isset($menu_items))
                    @foreach($menu_items as $item)
                    <a class="{!! LaravelAcl\Library\Views\Helper::get_active_route_name($item->getRoute()) !!}" href="{!! $item->getLink() !!}">{!!$item->getName()!!}</a>
                    @endforeach
                    @endif  
                    <a href="{!! URL::route('users.selfprofile.edit') !!}">My Account</a>
                    <a href="#">Contact Us</a>
                    <a href="{!! URL::route('user.logout') !!}">Sign Out</a>
                </div>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div style="clear:both;"></div>
    </div>
    <div class="gradTop">
        <div id="navWrap">
            <div class="container">
                <div id="mobileMenuBtn"><i class="fa fa-bars"></i></div>
                <div id="navigation-container">
                    <div id="navMiniMobile"> <span> | <a href="{!! URL::route('users.selfprofile.edit') !!}">My Account</a><span> | </span><a href="#">Contact Us</a><span> | </span><a href="{!! URL::route('user.logout') !!}">Sign Out</a></div>
                    <ul class="menu">
                        <li <?php //if (isset($current_route) && $current_route == "home"): ?>class="active"<?php //endif; ?>><a href="#">Home</a><li>       
                        <li <?php //if (isset($current_route) && $current_route == "howtouse"): ?>class="active" <?php //endif; ?>><a href="#">How to use</a><li>       
                        <li <?php //if (isset($current_route) && $current_route == "encourageactivation"): ?>class="active" <?php //endif; ?>><a href="#">Encourage Activation</a><li>       
                        <li <?php //if (isset($current_route) && $current_route == "promoteutilization"): ?>class="active" <?php //endif; ?>><a href="#">Promote Utilization</a><li>       
                        <li <?php //if (isset($current_route) && $current_route == "brand-asset"): ?>class="active" <?php //endif; ?>><a href="#">Market the brand</a><li>       
                        <li <?php //if (isset($current_route) && $current_route == "news-media"): ?>class="active" <?php //endif; ?>><a href="#">News & Media</a><li>
                        <li <?php //if (isset($current_route) && $current_route == "resources"): ?>class="active" <?php //endif; ?>><a href="#">Resources</a><li>
                    </ul>       
                </div>
            </div>				
        </div>
    </div>
</div>
