class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.text :question_1
      t.text :question_2
      t.text :question_3
      t.text :question_4
      t.text :question_5
      t.integer :buyer_id
      t.integer :seller_id

      t.timestamps

    end
  end
end
