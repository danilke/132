class User < ActiveRecord::Base
  attr_accessible :avatar, :name, :location
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_many :questions, :dependent => :destroy
  has_many :answers, :dependent => :destroy
  has_many :comments, :dependent => :destroy

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
   
end
