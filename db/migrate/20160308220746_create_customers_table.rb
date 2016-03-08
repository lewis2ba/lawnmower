class CreateCustomersTable < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.integer :lawn_size
      t.date :signup_date, :null => false, :default => Time.now
      t.date :mow_date, :null => false, :default => Time.now
      t.date :next_mow_date
      t.references :technician
    end
  end
end
