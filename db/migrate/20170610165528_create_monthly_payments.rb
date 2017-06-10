class CreateMonthlyPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :monthly_payments do |t|
      t.belongs_to :lean, index: true
      t.integer :month
      t.float :amount

      t.timestamps
    end
  end
end
