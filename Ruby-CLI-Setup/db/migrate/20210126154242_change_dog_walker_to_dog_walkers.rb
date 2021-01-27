class ChangeDogWalkerToDogWalkers < ActiveRecord::Migration[5.2]
  def change
    rename_table :dog_walker, :dog_walkers
  end
end
