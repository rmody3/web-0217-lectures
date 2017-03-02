# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  title      :string
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Movie < ApplicationRecord
  has_many :characters
  has_many :actors, through: :characters
end
