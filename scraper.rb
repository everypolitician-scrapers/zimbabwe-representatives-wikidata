#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://en.wikipedia.org/wiki/User:Oravrattas/Nigerian_House_of_Representatives',
  xpath: '//table[.//th[contains(.,"name")]]//tr[td]/td[1]//a[not(@class="new")]/@title',
)

EveryPolitician::Wikidata.scrape_wikidata(names: { en: names }, output: false)

