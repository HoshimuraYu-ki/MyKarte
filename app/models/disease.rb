class Disease < ApplicationRecord
  belongs_to: user
  belongs_to: hospital_clinic
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :outcome_id
end
