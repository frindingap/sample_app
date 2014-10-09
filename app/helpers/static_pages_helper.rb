require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'

module StaticPagesHelper
	 def blog_feed
    source = "http://www.huffingtonpost.com/tag/ballet/feed" # url or local file
    content = "" # raw content of rss feed will be loaded here
    open(source) do |s| content = s.read end
    rss = RSS::Parser.parse(content, false)
     
    html = "<ul>"
    rss.title.each do |i|
    html << "<li><a href='#{i.link}'>#{i.title}</a></li>"
    html << "</ul>"
    html
     
    end
  end
end
