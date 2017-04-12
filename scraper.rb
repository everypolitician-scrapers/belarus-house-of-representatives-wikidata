#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

pl = WikiData::Category.new('Kategoria:Deputowani do Izby Reprezentantów Zgromadzenia Narodowego Republiki Białorusi V kadencji', 'pl').member_titles |
     WikiData::Category.new('Kategoria:Deputowani do Izby Reprezentantów Zgromadzenia Narodowego Republiki Białorusi VI kadencji', 'pl').member_titles

be = WikiData::Category.new('Катэгорыя:Дэпутаты Палаты Прадстаўнікоў Нацыянальнага сходу Рэспублікі Беларусь 5-га склікання', 'be').member_titles |
     WikiData::Category.new('Катэгорыя:Дэпутаты Палаты Прадстаўнікоў Нацыянальнага сходу Рэспублікі Беларусь 6-га склікання', 'be').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: [], be: be, pl: pl })
