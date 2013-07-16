class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question

      t.timestamps
    end

    create_table :users_questions do |t|
      t.belongs_to :user
      t.belongs_to :question
    end
  end
end
