#!/bin/env ruby
# encoding: utf-8

require 'scraperwiki'
require 'wikidata/fetcher'

WikiData::Category.new('Kategoria:Deputowani do Izby Reprezentantów Zgromadzenia Narodowego Republiki Białorusi V kadencji', 'pl').wikidata_ids.each do |id|
  data = WikiData::Fetcher.new(id: id).data('en', 'be', 'ru', 'pl') or next
  puts data
  ScraperWiki.save_sqlite([:id], data)
end
