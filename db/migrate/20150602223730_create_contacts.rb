class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
  		t.string :name
  		t.integer :work_phone
  		t.integer :fax
  		t.integer :home_phone
  		t.integer :cell_phone
  		t.boolean :don_not_call
  		t.string :assistant
  		t.integer :assistant_phone
  		t.string :lead_source
  		t.text :primary_address
  		t.text :alternate_address
      t.timestamps null: false
    end
  end
end
