class Answer < ActiveRecord::Base
  attr_accessible :description, :title
   attr_accessible :avatar
    acts_as_commentable
   belongs_to :question,  :polymorphic => true
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
