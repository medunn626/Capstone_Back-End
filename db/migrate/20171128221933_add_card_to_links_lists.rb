class AddCardToLinksLists < ActiveRecord::Migration[5.1]
  def change
    add_reference :links_lists, :card, foreign_key: true
  end
end
