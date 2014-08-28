class Cheerup < ActiveRecord::Base
  has_and_belongs_to_many :reasons
end