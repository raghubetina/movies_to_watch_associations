class Director < ActiveRecord::Base
  validates :name, :presence => true

  has_many :movies
  # def movies
  #   return Movie.where({ :director_id => self.id })
  # end
end
