class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :image_url
      t.integer :buyer_id
      t.string :buyer_username
      t.string :buyer_first_name
      t.string :buyer_last_name
      t.string :buyer_email
      t.integer :buyer_net_worth
      t.string :buyer_birthdate
      t.string :buyer_level_of_education
      t.string :buyer_preferred_industry
      t.string :buyer_marital_status

      t.timestamps

    end
  end
end
