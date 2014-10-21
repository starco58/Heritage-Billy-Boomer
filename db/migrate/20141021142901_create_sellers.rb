class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.integer :seller_id
      t.string :image_url
      t.string :seller_username
      t.string :seller_first_name
      t.string :seller_last_name
      t.string :seller_email
      t.string :seller_birthdate
      t.string :seller_level_of_education
      t.string :seller_industry
      t.string :seller_marital_status
      t.string :seller_children

      t.timestamps

    end
  end
end
