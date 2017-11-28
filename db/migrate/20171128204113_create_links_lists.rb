class CreateLinksLists < ActiveRecord::Migration[5.1]
  def change
    create_table :links_lists do |t|
      t.string :linkedin
      t.string :facebook
      t.string :instagram
      t.string :twitter
      t.string :other

      t.timestamps
    end
  end
end
