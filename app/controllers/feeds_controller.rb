class FeedsController < ApplicationController
  def index
  	require 'nokogiri'
    require 'open-uri'
    require 'rubygems'
    url = "http://www.huffingtonpost.com/tag/ballet/feed.xml"
    doc = Nokogiri::XML(open(url))
    @data = doc.xpath("//xmlns:link/@href")
    @title = doc.xpath("//xmlns:title/text()")
    #@data = data_a.find('title')
    #@data = data_a.['a']
    #@links = "hello"
  end
end
