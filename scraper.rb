#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = WikiData::Category.new('Kategoria:Deputowani do Izby Reprezentantów Zgromadzenia Narodowego Republiki Białorusi V kadencji', 'pl').member_titles
EveryPolitician::Wikidata.scrape_wikidata(names: { en: [], pl: names })
