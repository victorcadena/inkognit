class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :gender, :birthDate

  validates_presence_of :name, :gender, :birthDate
  # attr_accessible :title, :body

  has_many :questions_users
  has_many :questions, :through => :questions_users
end
