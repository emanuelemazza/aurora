  <style>
 
 .dropdown-menu a {
    color: #000000 !important;
    font-family: "HelveticaNeue-Light","Helvetica Neue Light","Helvetica Neue",Helvetica,Arial,"Lucida Grande",sans-serif !important;
    font-size: 16px !important;
    font-weight: 300 !important;
    padding: 10px 15px;
}
.dropdown-menu{    background-color: #FFFFFF;
    background-image: #FFFFFF;
    background:#FFFFFF;}
.dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus, .dropdown-submenu:hover > a, .dropdown-submenu:focus > a {
  color: #ffffff !important;
  text-decoration: none;
  background-color: #0064D2;
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#0064D2', endColorstr='#0064D2', GradientType=0);
  text-shadow:none;
}
.navbar-inverse .navbar-brand {
    color: #F0EFEC;
    padding-left: 30px;
    padding-right: 115px;
}
.navbar.navbar-inverse {
    background-color: #3D3935;
    background-image: #3d3935;
    background: #3d3935;
    border-color: #080808;
}
.dropdown-menu:before {
   position: absolute;
   top: -7px;
   left: 9px;
   display: inline-block;
   border-right: 7px solid transparent;
   border-bottom: 7px solid #CCC;
   border-left: 7px solid transparent;
   border-bottom-color: rgba(0, 0, 0, 0.2);
   content: '';
 }

.dropdown-menu:after {
    position: absolute;
    top: -6px;
    left: 10px;
    display: inline-block;
    border-right: 6px solid transparent;
    border-bottom: 6px solid white;
    border-left: 6px solid transparent;
    content: '';
  }

.dropdown-menu:before, .dropdown-menu.pull-right:before {
right: 12px;
left: auto;
}

.dropdown-menu::after, .dropdown-menu.pull-right:after {
right: 13px;
left: auto;
}
  </style>

<header role="banner" class="navbar navbar-inverse">
  <div class="container-full">
    <div class="navbar-header">
      <button data-target=".bs-navbar-collapse" data-toggle="collapse" type="button" class="navbar-toggle">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/"></a>
    </div>
    <nav role="navigation" class="">
      <shiro:isLoggedIn>
      <ul class="nav navbar-nav pull-left">
      <li <g:if test="${(pageProperty(name: 'meta.menu-level-1')) == 'myprojects'}">class="active"</g:if>>
      <g:link controller="dashboard" action="index">My Projects</g:link></li>
      </ul>
  </shiro:isLoggedIn>
      <ul class="nav navbar-nav pull-right">
            <li> 
              <a target="_blank" href="https://wiki.vip.corp.ebay.com/display/C3/Releases">What's New</a>
            </li>
        <li>
          <a target="_blank" href="https://store.corp.ebay.com" title="App Store"><i class="icon-th-ebay"></i></a>
        </li>
        <li class="dropdown"> 
          <a data-toggle="dropdown" class="dropdown-toggle" href="#" title="Support Center">
            <i class="icon-question-sign-ebay"></i>
          </a> 
          <ul class="dropdown-menu"> 
            <li><a target="_blank" href="https://wiki.vip.corp.ebay.com/display/C3/C3+Home">Documentation</a></li> 
            <li><a target="_blank" href="https://github.scm.corp.ebay.com/pages/C3/status/">System Status</a></li> 
            <li><a target="_blank" href="https://answerhub.corp.ebay.com/spaces/151/c3.html">AnswerHub</a></li> 
            <li><a target="_blank" href="https://jirap.corp.ebay.com/browse/CCC">Contact Support</a></li>
          </ul> 
        </li>
        <li>
          <a href="mailTo:DL-C3-Feedback@corp.ebay.com" title="Feedback"><i class="icon-envelope-ebay"></i></a>
        </li>
        <shiro:isLoggedIn>
          <li class="dropdown"> 
            <a data-toggle="dropdown" class="dropdown-toggle" href="#"><shiro:principal/> <b class="caret"></b></a> 
            <ul class="dropdown-menu"> 
              <li><g:link elementId="signOut" controller="auth" action="signOut">Sign Out</g:link></li>
            </ul>
          </li>
        </shiro:isLoggedIn>
        <shiro:isNotLoggedIn>
          <li>
          <g:link controller="auth" action="login" class="login">Sign In</g:link>
          </li>
        </shiro:isNotLoggedIn>
      </ul>
    </nav>
  </div>
</header>