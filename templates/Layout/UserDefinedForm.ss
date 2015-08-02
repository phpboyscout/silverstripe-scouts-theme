<header>
    <div class="container">
        <h1>$Title</h1>
    </div>
</header>
<section class="typography container-fluid <% if not $Children %>no-sidebar<% end_if %>">

    <div id="Content">
        <% if $Level(2) %>
            <div id="Breadcrumbs">
                $Breadcrumbs(20, false, false, true)
            </div>
        <% end_if %>
        <div class="cols">
            <div>
                    $Content
            </div>
            <div>
                $Form
            </div>
        </div>
    </div>

    <% if $Children %>
    <div id="Sidebar">
        <nav>
            <ul>
                <% loop $Children %>
                    <li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                <% end_loop %>
            </ul>
        </nav>
    </div>
    <% end_if %>
</section>