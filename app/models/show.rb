class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters
    
    def actors_list
        actors_array = []
        actors.each do |actor|
            actors_array << actor.full_name
        end
        actors_array
    end
end