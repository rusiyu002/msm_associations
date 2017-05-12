class Director < ApplicationRecord
has_many(:movie, :class_name => "Movie", :foreign_key => "movie_id")
# - name: must be present; must be unique in combination with dob
validates :name, :presence => true, :uniqueness => {:scope => :dob}
# - dob: no rules
# - bio: no rules
# - image_url: no rules
end
