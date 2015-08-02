<% require javascript("//js.addthisevent.com/atemay.js") %>
<script type="text/javascript">
    addthisevent.settings({
        mouse     : false,
        css       : false,
        outlook   : {show:true, text:"Outlook Calendar"},
        google    : {show:true, text:"Google Calendar"},
        yahoo     : {show:true, text:"Yahoo Calendar"},
        hotmail   : {show:true, text:"Hotmail Calendar"},
        ical      : {show:true, text:"iCal Calendar"},
        dropdown  : {order:"outlook,google,yahoo,hotmail,ical"}
    });
</script>
<header>
    <div class="container">
        <h1>$Title</h1>
        <% with CurrentDate %>
            <div id="nextMeeting">
                <h3><time datetime="$StartDate">$StartDate.format('jS M, Y') @ $TimeRange()</time></h3>
            </div>
        <% end_with %>
    </div>
</header>
<section>
    <aside class="Widgetbar">
        <section class="WidgetHolder">
            <a href="$Link" title="Add to Calendar" class="addthisevent">
                Add to Calendar
                <% with $CurrentDate() %>
                    <span class="_start">$StartDate.format('d-m-Y') $StartTime.format('H:i:s')</span>
                    <span class="_end"><% if $EndDate %>$EndDate.format('d-m-Y')<% else %>$StartDate.format('d-m-Y')<% end_if %> $EndTime.format('H:i:s')</span>
                    <span class="_summary">$Event.Title</span>
                    <span class="_description">$Event.Content.FirstParagraph()</span>
                    <span class="_location">$Event.EventLocation</span>
                    <span class="_all_day_event"><% if $AllDay() %>true<% else %>false<% end_if %></span>
                    <span class="_date_format">DD-MM-YYYY</span>
                <% end_with %>
            </a>
        </section>

        <% if OtherDates() %>
            <section class="WidgetHolder">
                <div>
                    <h3>Other Dates</h3>
                    <ul>
                        <% loop OtherDates() %>
                            <li><time datetime="$StartDate">$StartDate.format('jS M, Y') @ $getFormattedStartTime()</time></li>
                        <% end_loop %>
                    </ul>
                </div>
            </section>
        <% end_if %>

        <% if $Files %>
            <section class="WidgetHolder">
                <div>
                    <h3>Files</h3>
                    <ul>
                        <% loop $Files() %>
                            <li><a href="$Link()" title="$Title">$Title</a></li>
                        <% end_loop %>
                    </ul>
                </div>
            </section>
        <% end_if %>

        <% if $ThumbnailImage %> $ThumbnailImage <%end_if %>


    </aside>

    <article>
        <% if $Image %> $Image <%end_if %>

        $Content

        <% if $EventBookingDetails %>
            <div class="booking-details">$EventBookingDetails</div>
        <% end_if %>

        <% if $EventBookingURL %>
            <div class="booking-url"><a href="$EventBookingURL">$EventBookingURL</a></div>
        <% end_if %>

        <% if $EventLocation %>
            <div class="location"><label>Location:</label> $EventLocation</div>
        <% end_if %>


        <% if $EventLatitude %><% if $EventLongitude %>
            <div class="map">
                <a href="https://www.google.co.uk/maps/preview#!q=$EventLongitude,$EventLatitude" target="_blank">
                    <img src="http://maps.googleapis.com/maps/api/staticmap?center=$EventLongitude,$EventLatitude&zoom=14&size=735x200&sensor=false&visual_refresh=true&markers=color:blue|$EventLongitude,$EventLatitude" />
                </a>
            </div>
        <% end_if %><% end_if %>

    </article>
</section>
