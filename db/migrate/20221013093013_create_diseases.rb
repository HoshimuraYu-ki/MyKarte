class CreateDiseases < ActiveRecord::Migration[6.0]
  def change
    create_table :diseases do |t|
      t.string  :disease_name ,null: false,unique: true 
      t.date    :onset_date   ,null: false
      t.integer :outcome_id
      t.date    :outcome_date
      t.timestamps
    end
  end
end