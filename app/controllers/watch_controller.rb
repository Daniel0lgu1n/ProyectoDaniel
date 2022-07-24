class WatchController < ApplicationController

  def watch

    begin

      File.open(Rails.root.join('storage', '14079.txt')).each do |line|
        if line.include?(params["v"].split("_").first)
          @info_video_json = line
          @codigo = params["v"].split("_").first
          break
        end
      end


      lines = Array.new
      lines2 = Array.new

      (1..3).each do |va|
        lines << IO.readlines(Rails.root.join('storage', '14079.txt'))[rand(1..14079)]
      end
      

      count = 0
      (1..1).each do |va|
        list_tmp = []
        (1..3).each do
          va1 = lines[count].gsub("\;\n","")
          list_tmp << va1
          count = count+1
        end
        lines2 << list_tmp
      end
      @json = lines2

      raise "error" if @info_video_json.blank?

    rescue StandardError => e

      redirect_to :controller => 'home', :action => 'index'

    end
    
  end

end
