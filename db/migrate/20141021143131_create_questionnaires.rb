class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.string :questionnaire_name
      t.integer :answer_1
      t.integer :answer_2
      t.integer :answer_3
      t.integer :answer_4
      t.integer :answer_5
      t.integer :buyer_id
      t.integer :seller_id
      t.integer :company_id
      t.string :questionnaire_name

      t.timestamps

    end
  end
end
