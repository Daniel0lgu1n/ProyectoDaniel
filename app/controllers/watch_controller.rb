class WatchController < ApplicationController

  def watch

    begin

      lines = Array.new

      File.open(Rails.root.join('storage', '14081.txt')).each { |line| lines << line }

      @info_video_json = lines.map { |va| va if va.include?(params["v"].split("_").first) }.compact.first
      @codigo = params["v"].split("_").first

      raise "error" if @info_video_json.blank?

    rescue StandardError => e

      redirect_to :controller => 'home', :action => 'index'

    end
    
  end

end
