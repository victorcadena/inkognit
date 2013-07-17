class CreateQuestionsUsersJoinTable < ActiveRecord::Migration
  def self.up
    create_table :questions_users, :id => false do |t|
      t.integer :question_id
      t.integer :user_id
    end

    add_index :questions_users, [:question_id, :user_id], :unique => true

  end

  def self.down
    drop_table :questions_users
  end
end
