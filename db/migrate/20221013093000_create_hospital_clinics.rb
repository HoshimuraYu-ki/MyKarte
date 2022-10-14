class CreateHospitalClinics < ActiveRecord::Migration[6.0]
  def change
    create_table :hospital_clinics do |t|
      t.string  :institution_name       ,null: false,unique: true
      t.integer :clinical_department_id ,null: false

      t.references :user,           null: false,foreign_key: true

      t.timestamps
    end
  end
end
