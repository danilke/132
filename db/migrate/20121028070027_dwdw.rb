class Dwdw < ActiveRecord::Migration
  def up
  	add_column :answers, :user_id, :integer
  	add_column :answers, :question_id, :integer

  end

  def down
  end
end
