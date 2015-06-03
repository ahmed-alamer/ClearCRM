class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
    	t.string :name
    	t.text :description
    	t.string :industry
    	t.integer :annual_revenue
    	t.integer :phone
    	t.integer :fax
    	t.text :billing_address
    	t.text :shipping_address
    	t.integer :rating, :max => 10
    	t.integer :employees
    	t.string :ticker_symbol
      t.timestamps null: false
    end
  end
end
