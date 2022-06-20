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
    
    (1..12).each do |va|
      va1 = lines[rand(1..14081)].gsub("\;\n","")
      lines2 << va1
    end

    @json = lines2
    @info_video_json = ";Videos porno gratis, Free porn, Sex;;;;porn,sex,videos,xvideos,+18,erotic"
  end

end

