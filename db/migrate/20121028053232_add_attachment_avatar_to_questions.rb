class AddAttachmentAvatarToQuestions < ActiveRecord::Migration
  def self.up
    change_table :questions do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :questions, :avatar
  end
end
