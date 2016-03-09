class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :invoice_date, :null => false, :default => Time.now
      t.integer :cost
      t.references :mowing
      t.references :mowing
    end
  end
end
