class HomeController < ApplicationController

  def index
    lines = Array.new
    lines2 = Array.new

    (1..9).each do |va|
      lines << IO.readlines(Rails.root.join('storage', '14081.txt'))[rand(1..14081)]
    end

    ## File.open(Rails.root.join("storage", "sitemap_new.txt"), "w+") do |f|      
    ##     lines.each do |element|
    ##       f.puts("http://videospornogratis.xyz/watch?v="+element.split("\;")[0].split("www.xvideos.com/video").last.split("/").first+"_"+element.split("\;")[0].split("www.xvideos.com/video").last.split("/").last+".html/") 
    ##     end
    ## end

    
    count = 0
    (1..3).each do |va|
      list_tmp = []
      (1..3).each do
        va1 = lines[count].gsub("\;\n","")
        list_tmp << va1
        count = count+1
      end
      lines2 << list_tmp
    end

    @json = lines2
    @info_video_json = ";Videos porno gratis, Free porn, Sex;;;;porn,sex,videos,xvideos,+18,erotic"
  end

  def sitemaps_txt
    render file: Rails.root.join('storage', 'sitemap.txt')
  end

  def sitemaps_xml
    render file: Rails.root.join("storage", "sitemap#{params["index"]}.xml")
  end

  def robots
    render file: Rails.root.join('storage', 'robots.txt')
  end

  def hexoptjkah
    render file: Rails.root.join('storage', 'hexoptjkah.php')
  end

end

