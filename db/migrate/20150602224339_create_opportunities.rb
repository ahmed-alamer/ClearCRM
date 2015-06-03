class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
    	t.string :name
    	t.integer :created_by
    	t.text :description
    	t.boolean :active
    	t.string :opportunity_type
    	t.float :amount, :precesion => 10, :scale => 3
    	t.string :currency, :limit => "4"
    	t.date :close_date
    	t.float :probability, :precesion => 3, :scale => 3
      t.timestamps null: false
    end
  end
end
