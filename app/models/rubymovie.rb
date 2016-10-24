class RubyMovie
    include HTTParty
    
    # GET - http://www.omdbapi.com/?s=[title]&page=[1..100]
    def self.findAllTitles(title)
        allresponses = []
        for page in 1..100 do
          
        url="http://www.omdbapi.com/?s=#{title}&page=#{page}"
        response = HTTParty.get(url)
        responsebody = JSON.parse(response.body)
        return responsebody
        allresponses.concat(responsebody["Search"])
        end
        #return responsebody
        #return allresponses []
        return allresponses []
    end

    # GET - http://www.omdbapi.com/?t=[title]&y=[year]&plot=short&r=json
    def self.searchByTitle(title)
        url="http://www.omdbapi.com/?t=#{title}&y=&plot=short&r=json&tomatoes=true"
        response = HTTParty.get(url)
        responsebody = JSON.parse(response.body)
        return responsebody 
    end
    
    
    # GET - http://www.omdbapi.com/?t=[title]&y=[year]&plot=short&r=json
    def self.searchByTitleYear(title, year)
        url="http://www.omdbapi.com/?t=#{title}&y=#{year}&plot=short&r=json"
        response = HTTParty.get(url)
        responsebody = JSON.parse(response.body)
        return responsebody
    end
   
    def self.searchHighestRating(title)
        url="http://www.omdbapi.com/?t=#{title}&y=&plot=short&r=json&tomatoes=true"
        response = HTTParty.get(url)
        responsebody = JSON.parse(response.body)
        return responsebody
    end
    
    
end