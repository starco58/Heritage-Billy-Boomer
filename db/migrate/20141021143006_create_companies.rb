class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :company_id
      t.string :company_name
      t.string :company_industry
      t.integer :company_number_of_employees
      t.integer :company_taxid
      t.integer :company_revenue_current_year
      t.integer :company_revenue_last_year
      t.integer :company_revenue_2_year
      t.integer :company_EBITDA
      t.integer :company_years_in_business
      t.integer :seller_id

      t.timestamps

    end
  end
end
