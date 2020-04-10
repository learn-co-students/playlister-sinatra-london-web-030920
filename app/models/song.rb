class Song < ActiveRecord::Base
    has_many :song_genres
    has_many :genres, through: :song_genres
    belongs_to :artist

    def slug 
        self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    end

    def self.find_by_slug(input)
        Song.all.find{|song| song.slug == input }
    end


end