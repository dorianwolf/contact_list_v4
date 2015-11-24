class AddContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
    end
    create_table :numbers do |t|
      t.string :number
      t.references :contact
    end
  end
end
