class HospitalClinic < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :clinical_department_id
end
