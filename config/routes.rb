Rails.application.routes.draw do
  get "watch", to: "watch#watch"
  get "/", to: "home#index"
  get '/page-sitemap.txt/' => 'home#sitemaps_txt'
  get '/robots.txt/' => 'home#robots'
end
