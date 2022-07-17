Rails.application.routes.draw do
  get "watch", to: "watch#watch"
  get "/", to: "home#index"
  get '/sitemap.txt/' => 'home#sitemaps_txt'
  get '/page-sitemap.xml/' => 'home#sitemaps_xml'
  get '/page-sitemap14.xml/' => 'home#sitemaps14_xml'
  get '/page-sitemap13.xml/' => 'home#sitemaps13_xml'
  get '/robots.txt/' => 'home#robots'
end
