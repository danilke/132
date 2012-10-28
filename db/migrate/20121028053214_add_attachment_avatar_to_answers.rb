class AddAttachmentAvatarToAnswers < ActiveRecord::Migration
  def self.up
    change_table :answers do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :answers, :avatar
  end
end
