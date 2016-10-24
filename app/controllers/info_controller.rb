class InfoController < ApplicationController
  require 'rubymovie'
  
  def infotitle
   if params[:search_title].to_s.present?
    @titlesearch= params[:search_title]
    @responsetitle = RubyMovie.searchByTitle(@titlesearch)
    #puts "debug============================"
    #puts @responsetitle.inspect
    #puts @responsetitle.class
    
   else
    redirect_to(root_url)
   end

  end

  def infoyear
    if params[:search_title].to_s.present? && params[:search_year].to_s.present?
      @title= params[:search_title]
      @year= params[:search_year]
      @responsetitleyear = RubyMovie.searchByTitleYear(@title, @year)
    else
      redirect_to(root_url)
    end
  end

  def infoalltitles
    if params[:search_title].to_s.present? 
      @title= params[:search_title]
      @responsealltitles = RubyMovie.findAllTitles(@title)
    else
      redirect_to(root_url)
    end
  end

  def infohighestrating
    if params[:search_title].to_s.present?
      title = params[:search_title]
      response = RubyMovie.searchHighestRating(title)
      
      title = response["title"]
      @moviedetail = Moviedetail.find_by(:title => name)
      if @moviedetail.blank?
        @moviedetail = Moviedetail.create(:name=>response["name"],:year=>response["year"],)
      end
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
