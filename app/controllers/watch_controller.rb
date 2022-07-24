class WatchController < ApplicationController

  def watch

    begin

      lines = Array.new
      lines2 = Array.new

      File.open(Rails.root.join('storage', '14081.txt')).each { |line| lines << line }

      @info_video_json = lines.map { |va| va if va.include?(params["v"].split("_").first) }.compact.first
      @codigo = params["v"].split("_").first


      (1..1).each do |va|
        list_tmp = []
        (1..3).each do
          va1 = lines[rand(1..14081)].gsub("\;\n","")
          list_tmp << va1
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
