# == Schema Information
#
# Table name: actors
#
#  id       :integer          not null, primary key
#  name     :string
#  hometown :string
#  birthday :string
#

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :movies, through: :characters
end
