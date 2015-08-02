<div id="brand">
    <a href="/">
        $SiteConfig.DistrictLogo.setWidth(200)
    </a>
</div>
<nav id="topnav" class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#pages-nav">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Cheadle & District</a>
        </div>
        <div class="collapse navbar-collapse" id="pages-nav">
            <ul class="nav navbar-nav">
                <% loop $Menu(1) %>
                    <% include Nav %>
                <% end_loop %>
            </ul>
        </div>
    </div>
</nav>
<div id="header-banner">

</div>
