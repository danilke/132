class Question < ActiveRecord::Base
  attr_accessible :description, :title, :user_id
  acts_as_commentable
  has_many :answers

   attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
