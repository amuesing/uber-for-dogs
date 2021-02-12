class ChangeDateFromIntegerToString < ActiveRecord::Migration[5.2]
  def change
    remove_column :appointments, :date, :integer
  end

end
