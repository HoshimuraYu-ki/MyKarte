class CreateHospitalClinics < ActiveRecord::Migration[6.0]
  def change
    create_table :hospital_clinics do |t|

      t.timestamps
    end
  end
end
