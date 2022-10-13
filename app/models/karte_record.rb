class KarteRecord
  include ActiveRecord::AttributeAssignment
  include ActiveModel::Model
  attr_accessor :user_id,
                :institution_name,
                :clinical_department_id,
                :consultation_date,
                :doctor,
                :subjective,
                :objective,
                :assessment,
                :plan,
                :next_day

  with_options presence: true do
    validates :user_id
    validates :institution_name
    validates :clinical_department_id,numericality: { other_than: 1 , message: "診療科を選択してください"}
    validates :consultation_date
    validates :doctor
    validates :subjective
    validates :assessment
    validates :plan
    validates :next_day
  end

  def save
    hospital_clinic = HospitalClinic.create(institution_name: institution_name, clinical_department_id: clinical_department_id,user_id: user_id)
    Karte.create(consultation_date: consultation_date,doctor: doctor,subjective: subjective,objective: objective,assessment: assessment,plan: plan,next_day: next_day,user_id: user_id,hospital_clinic_id: hospital_clinic.id)
  end
end