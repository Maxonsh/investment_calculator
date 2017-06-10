class Lean < ApplicationRecord
  belongs_to :legal_entity
  has_many :monthly_payments

  before_create :calculate_data

  def self.annual_yield_realistically
    ((Lean.pluck :interest_paid).inject(0) { |result, elem| result + elem } /
      (Lean.pluck :paid_expected_return).inject(0) { |result, elem| result + elem } /
        6 * 12).round 4
  end

  private

  def calculate_data
    self.mounthly_debt = mounthly_debt
    self.mounthly_percent_debt = mounthly_percent_debt
    self.total_monthly_debt = total_monthly_debt
    self.payout = payout
  end

  def mounthly_debt
    amount / loan_term
  end

  def mounthly_percent_debt
    amount * annual_rate / 12
  end

  def total_monthly_debt
    mounthly_debt + mounthly_percent_debt
  end

  def payout
    total_monthly_debt * loan_term
  end
end
