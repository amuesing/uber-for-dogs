class AddNameToDogWalkersTable < ActiveRecord::Migration[5.2]
  def change
    add_column :dog_walkers, :name, :string
  end
end
