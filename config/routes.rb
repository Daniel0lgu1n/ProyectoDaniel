Rails.application.routes.draw do
  get "watch", to: "watch#watch"
  get "/", to: "home#index"
  get '/sitemap.txt/' => 'home#sitemaps_txt'
  get '/sitemap1.xml/' => 'home#sitemaps_xml', defaults: { index: "1" }
  get '/sitemap2.xml/' => 'home#sitemaps_xml', defaults: { index: "2" }
  get '/sitemap3.xml/' => 'home#sitemaps_xml', defaults: { index: "3" }
  get '/sitemap4.xml/' => 'home#sitemaps_xml', defaults: { index: "4" }
  get '/sitemap5.xml/' => 'home#sitemaps_xml', defaults: { index: "5" }
  get '/sitemap6.xml/' => 'home#sitemaps_xml', defaults: { index: "6" }
  get '/sitemap7.xml/' => 'home#sitemaps_xml', defaults: { index: "7" }
  get '/sitemap8.xml/' => 'home#sitemaps_xml', defaults: { index: "8" }
  get '/sitemap9.xml/' => 'home#sitemaps_xml', defaults: { index: "9" }
  get '/sitemap10.xml/' => 'home#sitemaps_xml', defaults: { index: "10" }
  get '/sitemap11.xml/' => 'home#sitemaps_xml', defaults: { index: "11" }
  get '/sitemap12.xml/' => 'home#sitemaps_xml', defaults: { index: "12" }
  get '/sitemap13.xml/' => 'home#sitemaps_xml', defaults: { index: "13" }
  get '/sitemap14.xml/' => 'home#sitemaps_xml', defaults: { index: "14" }
  get '/robots.txt/' => 'home#robots'
end
