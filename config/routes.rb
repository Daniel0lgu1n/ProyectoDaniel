Rails.application.routes.draw do
  get "watch", to: "watch#watch"
  get "/", to: "home#index"
  get '/sitemap.txt/' => 'home#sitemaps_txt'
  get '/page-sitemap.xml/' => 'home#sitemaps_xml'
  get '/page-sitemap-new.xml/' => 'home#sitemaps_new_xml'
  get '/page-sitemap-new.txt/' => 'home#sitemaps_new_txt'
  get '/page-ssitemap.xml/' => 'home#ssitemap_xml'
  get '/robots.txt/' => 'home#robots'
end
