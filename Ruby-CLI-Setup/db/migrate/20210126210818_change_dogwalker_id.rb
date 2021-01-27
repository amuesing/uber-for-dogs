class ChangeDogwalkerId < ActiveRecord::Migration[5.2]
  def change
    rename_column :appointments, :dogwalker_id, :dog_walker_id
  end
end
