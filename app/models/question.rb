class Question < ActiveRecord::Base
  attr_accessible :question
  has_and_belongs_to_many :users
end
