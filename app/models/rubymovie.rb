class RubyMovie
    include HTTParty
    
    # GET - http://www.omdbapi.com/?t=[title]&y=&plot=short&r=json
    def self.searchByTitle(title)
        url="http://www.omdbapi.com/?t=#{title}&y=&plot=short&r=json"
        response = HTTParty.get(url)
        responsebody = JSON.parse(response.body)
        return responsebody
    end
    # GET - http://www.omdbapi.com/?t=[title]&y=[year]&plot=short&r=json
    def self.searchByTitleYear(title,year)
        url="http://www.omdbapi.com/?t=#{title}&y=#{year}&plot=short&r=json"
        response = HTTParty.get(url)
        responsebody = JSON.parse(response.body)
        return responsebody
    end
        #GET - GET - /api/v1/activity/latest 'https://rubygems.org/api/v1/activity/latest.json' 
    def self.get50LatestGems()
        url="https://rubygems.org/api/v1/activity/latest.json"
        response = HTTParty.get(url)
        responsebody = JSON.parse(response.body)
        return responsebody
    end
end