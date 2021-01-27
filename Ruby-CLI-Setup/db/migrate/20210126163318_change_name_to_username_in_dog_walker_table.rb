class ChangeNameToUsernameInDogWalkerTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :dog_walkers, :name, :username
  end
end
