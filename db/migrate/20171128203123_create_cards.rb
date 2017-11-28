class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :photo_url
      t.string :type
      t.string :phone_number
      t.string :email
      t.string :elevator_pitch

      t.timestamps
    end
  end
end
