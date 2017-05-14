class AddtoPitch < ActiveRecord::Migration
  def change
  	add_column :pitches, :team_members, :string
    add_column :pitches, :other_info, :text
    add_column :pitches, :launch_date, :text
    add_column :pitches, :category, :text
  end
end
