<div class="container">

    <% if $MenuSet('Pages') %>
        <ul class="footer-list">
            <% loop $MenuSet('Pages').MenuItems %>
                <li><a href="$Link" class="$LinkingMode">$MenuTitle</a></li>
            <% end_loop %>
        </ul>
    <% end_if %>
    <% if $MenuSet('Links') %>
        <ul class="footer-list">
            <% loop $MenuSet('Links').MenuItems %>
                <li><a href="$Link" class="$LinkingMode">$MenuTitle</a></li>
            <% end_loop %>
        </ul>
    <% end_if %>

    <span class="copyright">&copy; $SiteConfig.Title $Now.Year</span>
</div>