# == Schema Information
#
# Table name: meals
#
#  id         :bigint           not null, primary key
#  name       :string
#  image_url  :string
#  recipe_url :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Meal < ApplicationRecord
  validates_presence_of :name
end
