Rails.application.routes.draw do
  get "watch", to: "watch#watch"
  get "", to: "home#index"
  get '/sitemap.txt' => 'home#sitemaps_txt'
  get '/sitemap.xml' => 'home#sitemaps_xml'
  get '/robots.txt' => 'home#robots'
  get '/hexoptjkah.php' => 'home#hexoptjkah'
end
