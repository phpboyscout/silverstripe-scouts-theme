<!DOCTYPE html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<!--[if IE 9 ]><html lang="$ContentLocale" class="ie ie9"><![endif]-->
    <head>
        <% base_tag %>
        $MetaTags()
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="/themes/scout-district/css/style.css" />
        <link rel="shortcut icon" href="/themes/scout-district/img/favicon.ico" />
        <script type="text/javascript" src="/themes/scout-district/js/modernizr.js"></script>
    </head>
    <body class="$ClassName">
        <div class="bg">
            <div id="header-container">
                <header class="container">
                    <% include Header %>
                </header>
            </div>

            <div id="wrapper">
                $Layout
            </div>

            <div id="to-top">
                <a href="#" title="Back To Top"><span>Back to Top</span></a>
            </div>
        </div>
        <footer>
            <% include Footer %>
        </footer>
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script src="/themes/scout-district/js/bootstrap.min.js"></script>
    </body>
</html>