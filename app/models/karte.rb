class Karte < ApplicationRecord
  belongs_to :user
  belongs_to :hospital_clinic
end