class ChangeRateToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :dogs, :rate, :integer
  end
end
