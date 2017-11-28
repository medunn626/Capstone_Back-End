class Card < ApplicationRecord
  belongs_to :user
  has_many :links_lists
end
