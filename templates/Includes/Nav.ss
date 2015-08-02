<li class="$LinkingMode <% if $Children %>dropdown<% end_if %>">
    <a href="$Link" title="$Title.XML">$MenuTitle</a>
    <% if $Children %>
        <ul class="dropdown-menu" role="menu">
        <% loop $Children %>
            <% include Nav %>
        <% end_loop %>
        </ul>
    <% end_if %>
</li>
