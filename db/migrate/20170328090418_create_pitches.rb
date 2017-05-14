class CreatePitches < ActiveRecord::Migration
  def change
    create_table :pitches do |t|
      t.string :owner_name
      t.string :owner_email
      t.string :company_address
      t.string :contact
      t.string :headline
      t.string :company_name
      t.string :app_link
      t.text :description

      t.timestamps null: false
    end
  end
end
