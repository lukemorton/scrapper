require 'excon'
require 'nokogiri'

response = Excon.get('https://www.bbc.co.uk/news')

html = response.body

html_doc = Nokogiri::HTML(html)

latest_article = html_doc.css('.gs-c-promo-heading.gs-o-faux-block-link__overlay-link.gel-paragon-bold.nw-o-link-split__anchor')

p latest_article.text
