class CreateKartes < ActiveRecord::Migration[6.0]
  def change
    create_table :kartes do |t|
      t.string :doctor    ,null: false
      t.string :subjective,null: false
      t.string :objective ,null: false
      t.string :assessment,null: false
      t.string :plan      ,null: false
      t.string :next      ,null: false

      t.references :user,           null: false,foreign_key: true
      t.references :hospital_clinic,null: false,foreign_key: true

      t.timestamps
    end
  end
end
