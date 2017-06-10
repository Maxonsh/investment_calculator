legal_entity1 = LegalEntity.create name: 'ЮЛ1'
legal_entity2 = LegalEntity.create name: 'ЮЛ2'
legal_entity3 = LegalEntity.create name: 'ЮЛ3'

lean1 = Lean.create amount: 1_000_000,
                    loan_term: 6,
                    interest_paid: 150_000,
                    paid_expected_return: 1_000_000,
                    annual_yield: 0.3,
                    annual_rate_delay: 0.5,
                    payment_period: 1,
                    annual_rate: 0.3,
                    legal_entity: legal_entity1

lean2 = Lean.create amount: 1_000_000,
                    loan_term: 6,
                    interest_paid: 100_000,
                    paid_expected_return: 1_000_000,
                    annual_yield: 0.2,
                    annual_rate_delay: 0.5,
                    payment_period: 1,
                    annual_rate: 0.3,
                    legal_entity: legal_entity2

lean3 = Lean.create amount: 1_000_000,
                    loan_term: 6,
                    interest_paid: 216_666.6667,
                    paid_expected_return: 1_000_000,
                    annual_yield: 0.43,
                    annual_rate_delay: 0.5,
                    payment_period: 1,
                    annual_rate: 0.3,
                    legal_entity: legal_entity3

# lean 1
[1, 2, 3, 4, 5, 6].each do |month|
  MonthlyPayment.create lean: lean1, month: month, amount: 191_666.67
end

# lean 2
[1, 2, 3].each do |month|
  MonthlyPayment.create lean: lean2, month: month, amount: 191_666.67
end

MonthlyPayment.create lean: lean2, month: 4, amount: 525_000.00

[5, 6].each do |month|
  MonthlyPayment.create lean: lean2, month: month, amount: 0
end

# lean 3
[1, 2].each do |month|
  MonthlyPayment.create lean: lean3, month: month, amount: 191_666.67
end

[3, 4, 5, 6].each do |month|
  MonthlyPayment.create lean: lean3, month: month, amount: 208_333.33
end
