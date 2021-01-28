class CreateDogwalkers < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_walker do |t|
      t.string :name
      t.string :location
      t.integer :age
        
      t.timestamps
    end
  end
end
