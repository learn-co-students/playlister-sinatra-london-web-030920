class SongGenre < ActiveRecord::Base
    belongs_to :song
    belongs_to :genre

    def slug 
        self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    end

    def self.find_by_slug(input)
        SongGenre.all.find{|song_genre| song_genre.slug == input }
    end
    
end