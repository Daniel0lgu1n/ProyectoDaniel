Rails.application.routes.draw do
  get "watch", to: "watch#watch"
  get "/", to: "home#index"
  get '/sitemap.txt/' => 'home#sitemaps_txt'
  get '/sitemap1.xml/' => 'home#sitemaps_xml', defaults: { index: "1" }
  get '/sitemap2.xml/' => 'home#sitemaps_xml', defaults: { index: "2" }
  get '/robots.txt/' => 'home#robots'
end
