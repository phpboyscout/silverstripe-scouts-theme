<div class="blogSummary">
	<h2 class="postTitle">
        <% if ClassName = ExternalBlogEntry %>
            <a href="$ExternalLink" target="_blank" title="<% _t('BlogSummary_ss.VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a>
        <% else %>
        <a href="$Link" title="<% _t('BlogSummary_ss.VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a>
        <% end_if %>
    </h2>
    <p class="authorDate"><% _t('BlogSummary_ss.POSTEDBY', 'Posted by') %> $Author.XML <% _t('BlogSummary_ss.POSTEDON', 'on') %> $Date.Long <% if ClassName != ExternalBlogEntry %>| <a href="$Link#comments-holder" title="View Comments Posted">$Comments.Count <% _t('BlogEntry_ss.COMMENTS', 'Comments') %></a><% end_if %></p>
	<% if TagsCollection %>
		<p class="tags">
			<% _t('BlogSummary_ss.TAGS','Tags') %>:
			<% loop TagsCollection %>
				<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
			<% end_loop %>
		</p>
	<% end_if %>

	<% if BlogHolder.ShowFullEntry %>
		$Content
	<% else %> 
		<p>$Content.FirstParagraph(html)</p>
	<% end_if %>

    <p class="blogVitals">
        <% if ClassName = ExternalBlogEntry %>
            <a href="$ExternalLink" class="readmore" target="_blank" title="Read Full Post">
                <% _t('BlogSummary_ss.READFULLPOST','Read the full post') %>
            </a>
        <% else %>

        <a href="$Link#comments-holder" class="comments" title="View Comments for this post" >
			$Comments.Count <% _t('BlogSummary_ss.SUMMARYCOMMENTS','comment(s)') %>
		</a> 
		| 
		<a href="$Link" class="readmore" title="Read Full Post">
			<% _t('BlogSummary_ss.READFULLPOST','Read the full post') %>
		</a>
        <% end_if %>
	</p>
</div>
