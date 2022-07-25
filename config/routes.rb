Rails.application.routes.draw do
  get "watch/:v", to: "watch#watch"
  get "watch/", to: "watch#watch"
  get "/", to: "home#index"
  get '/new_sitemap1.txt/' => 'home#sitemaps_txt'
  get '/new_sitemap1.xml/' => 'home#sitemaps_xml', defaults: { index: "1" }
  get '/new_sitemap2.xml/' => 'home#sitemaps_xml', defaults: { index: "2" }
  get '/new_sitemap3.xml/' => 'home#sitemaps_xml', defaults: { index: "3" }
  get '/new_sitemap4.xml/' => 'home#sitemaps_xml', defaults: { index: "4" }
  get '/new_sitemap5.xml/' => 'home#sitemaps_xml', defaults: { index: "5" }
  get '/new_sitemap6.xml/' => 'home#sitemaps_xml', defaults: { index: "6" }
  get '/new_sitemap7.xml/' => 'home#sitemaps_xml', defaults: { index: "7" }
  get '/new_sitemap8.xml/' => 'home#sitemaps_xml', defaults: { index: "8" }
  get '/new_sitemap9.xml/' => 'home#sitemaps_xml', defaults: { index: "9" }
  get '/new_sitemap10.xml/' => 'home#sitemaps_xml', defaults: { index: "10" }
  get '/robots.txt/' => 'home#robots'
end
