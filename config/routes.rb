Rails.application.routes.draw do
  get "watch/:v", to: "watch#watch"
  get "/", to: "home#index"
  get '/new_sitemap1.txt/' => 'home#sitemaps_txt'
  get '/new_sitemap1.xml/' => 'home#sitemaps_xml', defaults: { index: "1" }
  get '/new_sitemap2.xml/' => 'home#sitemaps_xml', defaults: { index: "2" }
  get '/robots.txt/' => 'home#robots'
end
