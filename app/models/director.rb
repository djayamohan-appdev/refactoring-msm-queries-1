# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord

  def filmography
    # should return Movie::ActiveRecord_Relation
    my_movies = Movie.where({:director_id => self.id})
    return my_movies
  end
  
end
