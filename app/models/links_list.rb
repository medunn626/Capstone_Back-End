class CardValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    # binding.pry
    unless value.user_id == record.user_id
      record.errors[attribute] << (options[:message] || "You don't have access to this card")
    end
  end
end

class LinksList < ApplicationRecord
  belongs_to :user
  belongs_to :card
  validates :card, card: true
end
