class AddPitchStatus < ActiveRecord::Migration
    def change
  	add_column :pitches, :pitch_status, :string
  end
end
