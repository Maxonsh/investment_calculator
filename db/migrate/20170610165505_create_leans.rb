class CreateLeans < ActiveRecord::Migration[5.0]
  def change
    create_table :leans do |t|
      t.belongs_to :legal_entity, index: true
      t.integer :amount, null: false
      t.integer :loan_term, null: false
      t.decimal :annual_rate
      t.integer :payment_period
      t.decimal :annual_rate_delay
      t.float :mounthly_debt
      t.integer :mounthly_percent_debt
      t.float :total_monthly_debt
      t.integer :payout
      t.float :interest_paid
      t.integer :paid_expected_return
      t.decimal :annual_yield

      t.timestamps
    end
  end
end
