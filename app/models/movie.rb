class Movie < ActiveRecord::Base

  validates :title, :presence => true
  validates :director_id, :presence => true

  # belongs_to :director, :class_name => "Director", :foreign_key => "director_id"
  belongs_to :director

  # def director
  #   return Director.find_by({ :id => self.director_id })
  # end

  # has_many :roles, :class_name => "Role", :foreign_key => "movie_id"
  has_many :roles

  # def roles
  #   return Role.where({ :movie_id => self.id })
  # end

  has_many :actors, :through => :roles


end
