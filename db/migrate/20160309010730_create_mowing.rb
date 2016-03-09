class CreateMowing < ActiveRecord::Migration
  def change
    create_table :mowings do |t|
      t.references :customer
      t.references :technician
      t.date :mow_date
    end
  end
end
