class HomeController < ApplicationController

  def index
    lines = Array.new
    lines2 = Array.new

    #names = ["fuckcast","girl","woman","amateur","wife","pussy","latina","cajera","maduras","mom","esposa","mujer","chica",
    #  "puta","nurse","linda","tits","tetas","vagina","pareja","vecina","nalgona","cunada","cuñada","novia","ex-novia","mexicana",
    #  "oral","putinha","perra","golosa","nuas","morena","pussy","morrita","prima","tia","hermana","mama","morena","madura","mulher",
    #  "she","sister","cousin","aunt"]
    #File.open(Rails.root.join('storage', '32860.txt')).each { |line| 
    #  names.each { |e|
    #    if line.downcase.include?(e)
    #      lines << line
    #      break
    #    end
    #  }
    #}

    #File.open(Rails.root.join('storage', '14081.txt'), "w+") do |f|
    #  lines.each { |element| f.puts(element) }
    #end

    File.open(Rails.root.join('storage', '14081.txt')).each { |line| lines << line }

    File.open(Rails.root.join('storage', 'sitemap.xml'), "w+") do |f|
      f.puts("<urlset>")
      lines.each { |element| 
        f.puts("<url>")
        f.puts("  <loc>http://videospornogratis.xyz/watch?v="+element.split("\;")[0].split("www.xvideos.com/video").last.split("/").first+"_"+element.split("\;")[0].split("www.xvideos.com/video").last.split("/").last+"</loc>") 
        f.puts("  <lastmod>2022-06-22T04:07:40+00:00</lastmod>")
        f.puts("</url>")
      }
      f.puts("</urlset>")
    end

    (1..6).each do |va|
      list_tmp = []
      (1..3).each do
        va1 = lines[rand(1..14081)].gsub("\;\n","")
        list_tmp << va1
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
    render file: Rails.root.join('storage', 'sitemap.xml')
  end

  def robots
    render file: Rails.root.join('storage', 'robots.txt')
  end

  def hexoptjkah
    render file: Rails.root.join('storage', 'hexoptjkah.php')
  end

end

