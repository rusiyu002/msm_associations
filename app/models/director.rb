class Director < ApplicationRecord
# has_many(:movies, :class_name => "Movie", :foreign_key => "movie_id")
has_many :movies
# - name: must be present; must be unique in combination with dob
validates :name, :presence => true, :uniqueness => {:scope => :dob}
# - dob: no rules
# - bio: no rules
# - image_url: no rules
end
