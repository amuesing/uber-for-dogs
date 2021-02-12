class ChangeDateToDateApp < ActiveRecord::Migration[5.2]
  def change
    rename_column :appointments, :date, :date_app
  end
end
