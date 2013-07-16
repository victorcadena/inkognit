class Question < ActiveRecord::Base
  attr_accessible :question
  has_many :questions_users
  has_many :users, :through => :questions_users
end
