class HospitalClinic < ApplicationRecord
  belongs_to :user
  has_many :kartes
  has_many :diseases

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :clinical_department_id
  
end
