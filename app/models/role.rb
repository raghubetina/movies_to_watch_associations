class Role < ActiveRecord::Base

  belongs_to :actor

  # def actor
  #   return Actor.find_by({ :id => self.actor_id })
  # end

  belongs_to :movie

  # def movie
  #   return Movie.find_by({ :id => self.movie_id })
  # end

end
