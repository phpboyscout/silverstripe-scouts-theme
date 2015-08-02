
<header>
    <div class="container">
        <h1>$Title</h1>
    </div>
</header>
<section>
    <aside class="Widgetbar">
        <section class="WidgetHolder">
            <div>
                <h3>Pick a day</h3>
                $CalendarWidget
            </div>
        </section>
        <section class="WidgetHolder">
            <div>
                $MonthJumper
            </div>
        </section>
        <section class="WidgetHolder">
            <div>
                <h3>Quick Links</h3>
                <% include QuickNav %>
            </div>
        </section>
    </aside>

    <div class="articles">
        <% if $Events() %>
            <% loop $Events() %>
                <article>
                    <div class="image">
                        <% if $Event.ThumbnailImage %><a href="$Event.Link">$Event.ThumbnailImage.SetWidth(110)</a><%end_if %>
                    </div>
                    <div class="event">
                        <% if $Announcement %>
                            <h2>
                                $Title - <time datetime="$StartDate">$StartDate.format('jS M, Y') <% if StartTime %> @ $getFormattedStartTime()<% end_if %></time>
                            </h2>
                            <% if $Content %>
                                <p>$Content</p>
                            <% end_if %>
                        <% else %>
                            <h2>
                                <a href="$Link">$Event.Title - <time datetime="$StartDate">$StartDate.format('jS M, Y') <% if StartTime %> @ $getFormattedStartTime()<% end_if %></time></a>
                            </h2>
                            <p>$Event.Content.FirstParagraph()</p>
                            <% if $Event.EventLocation %>
                                <p class="location"><strong>Location: </strong>$Event.EventLocation</p>
                            <% end_if %>
                        <% end_if %>
                    </div>
                </article>
            <% end_loop %>
        <% else %>
            <p><% _t('NOEVENTS','There are no events') %>.</p>
        <% end_if %>
    </div>
</section>