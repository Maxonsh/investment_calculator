class LegalEntity < ApplicationRecord
  has_one :lean
  has_many :monthly_payments, through: :lean
end
