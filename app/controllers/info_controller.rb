class InfoController < ApplicationController
  require 'rubymovie'
  
  def infotitle
   if params[:search_title].to_s.present?
    @titlesearch= params[:search_title]
    @responsetitle = RubyMovie.searchByTitle(@titlesearch)
   else
    redirect_to(root_url)
   end

  end

  def infoyear
    if params[:search_title].to_s.present? && [:search_year].to_s.present?
      @titleyearsearch= params[[:search_title]&&[:search_year]]
      @responsetitleyear = RubyMovie.searchByTitleYear(@titleyearsearch)
    else
      redirect_to(root_url)
    end
  end

  def inforated
  end

  def infoawards
  end

  def infometascore
  end

  def infoimdbrating
  end
end
