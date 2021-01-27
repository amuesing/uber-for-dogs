class CreateAppointment < ActiveRecord::Migration[5.2]
  def change
    create_table :user_jokes do |t|
      t.integer :user_id
      t.integer :dogwalker_id
      t.integer :date

      t.timestamps
    end
  end
end
