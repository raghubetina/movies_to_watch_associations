class Actor < ActiveRecord::Base
  validates :name, :presence => true

  has_many :roles
  # def roles
  #   return Role.where({ :actor_id => self.id })
  # end

  has_many :movies, :through => :roles
end

