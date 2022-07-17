Rails.application.routes.draw do
  get "watch", to: "watch#watch"
  get "/", to: "home#index"
  get '/page-sitemap.txt/' => 'home#sitemaps_txt'
  get '/page-sitemap.xml/' => 'home#sitemaps_xml'
  get '/page-sitemap-txt/' => 'home#sitemaps_txt'
  get '/page-sitemap-xml/' => 'home#sitemaps_xml'
  get '/robots.txt/' => 'home#robots'
end
