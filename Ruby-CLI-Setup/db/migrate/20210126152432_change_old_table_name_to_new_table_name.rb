class ChangeOldTableNameToNewTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :user_jokes, :appointments
  end
end
